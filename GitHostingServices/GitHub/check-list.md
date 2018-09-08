# check-list

各作業断面で順守すべきチェック項目
※EclipseでのJava開発を想定

## commit/push前

* 新規・修正ソースがフォーマット済みであること（Ctrl + Shift + F）
* JUnitがパスすること
* 修正ファイルにissueに無関係の差分がないこと
* [設計ガイドライン](https://github.com/masuda220/business-logic-patterns/wiki/%E8%A8%AD%E8%A8%88%E3%82%AC%E3%82%A4%E3%83%89%E3%83%A9%E3%82%A4%E3%83%B3)違反をしていないこと

## commit/push時

* 想定通りのブランチを選択していること
* コミットメッセージにIssue番号を付与する
    * Issue #xx 〇〇の対応

問題なければPull Requestを作成
