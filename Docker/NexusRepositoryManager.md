## Nexusインストール（パッケージ版）
https://www.sonatype.com/download-oss-sonatype  
任意のディレクトリに解凍

## keystore作成
keytoolコマンドを実行し、keystore.jksという名前でkeystoreを作成する。
```
keytool -keystore keystore.jks -alias nexus -genkey -keyalg RSA -sigalg SHA256withRSA
```
設定例
> キーストアのパスワードを入力してください:   
>新規パスワードを再入力してください:  
>姓名は何ですか。  
>[Unknown]: repo.example.com  
>組織単位名は何ですか。  
>[Unknown]: foo  
>組織名は何ですか。  
>[Unknown]: dev  
>都市名または地域名は何ですか。  
>[Unknown]:  
>都道府県名または州名は何ですか。  
>[Unknown]:  
>この単位に該当する2文字の国コードは何ですか。  
>[Unknown]: jp  
>CN=repo.example.com, OU=foo, O=dev, L=Unknown, ST=Unknown, C=jpでよろしいですか。  
>[いいえ]: はい  
>  
><nexus>の鍵パスワードを入力してください  
>(キーストアのパスワードと同じ場合はRETURNを押してください):  

##  HTTPSコネクタ設定
https://help.sonatype.com/repomanager3/security/configuring-ssl#ConfiguringSSL-InboundSSL-ConfiguringtoServeContentviaHTTPS  
「How to Enable the HTTPS Connector」の2以降に記載のとおり。

## Nexus起動

```
$install-dir/nexus run
```

### 起動URL
https://repo.example.com:8443/

必要に応じて`/etc/hosts`の設定を追加


### サインイン
* **Username:** admin
* **Password:** admin123

## リポジトリ作成

### proxy

Repository administration(設定アイコン） > Repositories > Create repository > docker (proxy)

#### 設定値

* **Name:** docker-hub
* **Remote storage:** https://registry-1.docker.io
* **Docker Index:** Use Docker Hub


### group

Repository administration(設定アイコン） > Repositories > Create repository > docker (group)

#### 設定値


* **Name:** docker-all
* **HTTPS:** 18443
* **Member repositories:** docker-hub


### 自己証明書作成(hostのみ)

設定例

```
mkdir -p certs  
  
openssl req \  
-newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key \  
-x509 -days 365 -out certs/domain.crt  
>....................................................................++  
>....................................................................................................................................++  
>writing new private key to 'certs/domain.key'  
>-----  
>You are about to be asked to enter information that will be incorporated  
>into your certificate request.  
>What you are about to enter is what is called a Distinguished Name or a DN.  
>There are quite a few fields but you can leave some blank  
>For some fields there will be a default value,  
>If you enter '.', the field will be left blank.  
>-----  
>Country Name (2 letter code) []:  
>State or Province Name (full name) []:  
>Locality Name (eg, city) []:  
>Organization Name (eg, company) []:  
>Organizational Unit Name (eg, section) []:  
>Common Name (eg, fully qualified host name) []:repo.example.com  
>Email Address []:  
```

※最低限、Common Nameだけ入力されていれば良い

### リポジトリー自己証明書の紐づけ

だいたいここに書いてある通り  
https://docs.docker.com/registry/insecure/#use-self-signed-certificates

#### Linuxの場合
`domain.crt`を`ca.crt`にリネームし、以下のディレクトリとなるよう配置する

```
/etc/docker/certs.d/$repository_address:$port/ca.crt
```

配置例
```
/etc/docker/certs.d/repo.example.com:18443/ca.crt
```
↑  
Nexusインスタンスひとつに対してひとつだけでいいので、ポート間違っているかも。  
Windowsをクライアントとした場合は、ルート証明書1設定＋Insecure Registries（ポート単位）でできた。  

#### Windows(Server or not)

ルート証明書としてOSへ証明書をインストール

### Insecure Registries設定（client端末だけ?

Docker settings > Daemon > Insecure registries

設定例
```
repo.example.com:18443
```

※privatリポジトリに割り当てられたポート番号単位で設定を追加する必要がある  
※適用後はDockerの再起動が必須  

 # check repository
```
curl -v -k https://repo.example.com:18443/v2/_catalog
curl -v -k https://repo.example.com:28443/v2/_catalog
```

