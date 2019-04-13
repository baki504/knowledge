# Pleiades All in One Eclipse設定

[Pleiades All in One](http://mergedoc.osdn.jp/)でJavaのWeb開発をする際に役立つプラグイン、設定など。

## プラグイン

* [lombok](https://projectlombok.org/)
* [Markdown Text Editor](https://marketplace.eclipse.org/content/markdown-text-editor)
* [Darkest Dark Theme with DevStyle](https://marketplace.eclipse.org/content/darkest-dark-theme-devstyle)
* [SonaLint](https://marketplace.eclipse.org/content/sonarlint)

## 設定

### パースペクティブ

* JavaEE
* Git

### ビュー

* パッケージエクスプローラ
    * パッケージ・プレゼンテーション > 階層化
    * フィルター .*リソース解除
* Markdown View

### 設定

* 一般 > エディター > ファイルの関連付け
    * .md: Markdown Editor -> デフォルト

* Java
    * インストール済みのJRE > 任意のJDK追加
    * コード・スタイル > フォーマッター > 編集 > タブ・ポリシー > スペースのみ
        * インデント > タブ・ポリシー: スペースのみ、
        * 行折り返し > 行の最大幅: 120
        * 行折り返し > 折り返し設定 > 関数呼び出し > 修飾オブジェクト割り振り引数
            * 必要時以外は最初の要素以外の全ての要素を折り返す
            * 行が最大行幅より短くても強制分割 ON
            * 1つごとにインデント
* Maven > インストール > 追加

* XML
    * XMLファイル > エディター
        * 行の幅: 120
        * スペースを使用インデント > インデントサイズ: 2

* Web
    * HTML ファイル > エディター
        * 行の幅: 120
        インデント・サイズ: 2

* チーム > Git
    * 構成 > キー > user > email, name を追加
    * ヒストリー > 相対日付 チェックオフ
* 実行/デバッグ
    * コンソール > コンソール出力の制限 チェックオフ
    * 起動
        * 起動前に、編集中の必須エディターを保存
        * 起動操作 > 常に前回起動したアプリケーションを起動する

## 英語化

1. `<PLEIADES_HOME>\eclipse\dropins\MergeDoc`を削除
1. `<PLEIADES_HOME>\eclipse\eclipse.ini`を以下の通り編集
    * `-javaagent:dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar`をコメントアウト
    * 最下行に"-Duser.language=en_US"を追加

[Back to Outline](https://github.com/baki504/knowledge/blob/master/README.md)
