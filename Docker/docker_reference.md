
# Dockerリファレンス

## 概要図

<img src="https://github.com/baki504/knowledge/blob/master/Docker/img/docker_overview.png" width="50%"/>

### 参考リンク
ドットインストール Docker入門 > #04 作業の流れと用語を理解しよう


## 実行例

```bash
# Docker Hub上のImage検索
docker search centos

# Image取得
docker pull centos

# 取得Imageのリスト表示
docker images

# Image詳細表示（名前、IDでImageを指定する。IDは一意であれば先頭から最小文字列でも可）
docker inspect centos

# Image削除
docker rmi

# ImageからのContainer生成、実行
docker run centos echo "Hello World"

#Container一覧表示
docker ps

# Container削除
docker rm XXX

# バックグラウンドで起動
# この例ではメモリ状況を3秒おきに出力するコマンド
docker run -d centos free -s 3

# ログ表示（-fオプションで継続表示も可）
docker logs -f XXX

# タスクをフォアグラウンドにもってくる（ctrl + Cで抜けられる）
docker attach --sig-proxy=false XXX

# Container停止
docker stop XXX
docker kill XXX

# Container開始
docker start XXX

# Container操作
docker run -it centos /bin/bash

# Image作成
docker commit XXX baki504/hello

```

## ビルド

* Imageの取得、Container起動・変更、Image再生成等の一連の作業をスクリプトを使って自動化する
* スクリプトは「Dockerfile」という拡張子なしのファイルで定義する
* 実行はdocker buildというコマンドを使う


### Dockerfile

```bash
FROM centos
MAINTAINER baki504 <XXX@msn.com>
# RUN: buildするときに実行される
RUN echo "now building..."
# CMD: runする（ImageからContainer生成、実行）ときに実行される
# CMD echo "now running..." 非推奨な書き方
# 慣習的にコマンド実行は[]をつけた以下の表記する
CMD ["echo","now running..."]
```

### コマンド例

前提：カレントディレクトリにDockerfileが配置されていること

```bash
docker build -t baki504/hello .
```
