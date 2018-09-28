# Pleiades All in One設定

PleiadesでJavaを使って開発をする際に設定しておくと便利な設定。

## 英語化

1. `<PLEIADES_HOME>\eclipse\dropins\MergeDoc`を削除
1. `<PLEIADES_HOME>\eclipse\eclipse.ini`を以下の通り編集
    * `-javaagent:dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar`をコメントアウト
    * 最下行に"-Duser.language=en_US"を追加

## パースペクティブ

* Git
* JavaEE

## ビュー

* パッケージエクスプローラ
    * パッケージ・プレゼンテーション > 階層化
    * フィルター .*リソース解除

## 設定

* Java
    * インストール済みのJRE > JDK追加
    * コード・スタイル > フォーマッター > 編集 > タブ・ポリシー > スペースのみ
* Maven > インストール > 追加
* チーム > Git
    * 構成 > キー > user > email, name を追加
    * ヒストリー > 相対日付 チェックオフ
* 実行/デバッグ
    * コンソール > コンソール出力の制限 チェックオフ
    * 起動
        * 起動前に、編集中の必須エディターを保存
        * 起動操作 > 常に前回起動したアプリケーションを起動する

## プラグイン

* SonaLint
* EGradle
    * 対象プロジェクトルート右クリック > Change EGradle root project

[Back to Outline](https://github.com/baki504/knowledge/blob/master/README.md)
