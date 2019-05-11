# check-list

各作業断面で順守すべきチェック項目
※EclipseでのJava開発を想定

## コーディング開始時

* fork元のmasterブランチを最新化できていること
* fork元 → 先のmasterブランチマージができていること
* fork先のmasterブランチからPull Request用のブランチを作成できていること

## commit/push時

* 想定通りのブランチを選択していること
* 新規・修正ソースがフォーマット済みであること（Ctrl + Shift + F）
* JUnitがパスすること
* 修正ファイルにissueに無関係の差分がないこと
* [設計ガイドライン](https://github.com/masuda220/business-logic-patterns/wiki/%E8%A8%AD%E8%A8%88%E3%82%AC%E3%82%A4%E3%83%89%E3%83%A9%E3%82%A4%E3%83%B3)違反をしていないこと
* コミットメッセージにIssue番号を付与する
    * Issue #xx 〇〇の対応

問題なければPull Requestを作成

[Back to Outline](https://github.com/baki504/knowledge/blob/master/README.md)
