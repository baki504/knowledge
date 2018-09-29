
忘れがちなコマンド、新しく知ったコマンドなどをまとめる。

# 目次（順不同）
* tar
* gzip
* grep
* more
* alternative
* wc
* find
* touch
* df
* curl

## tar
複数のファイルをひとつにまとめたアーカイブファイルを作成・展開する。

### サンプル

```bash
# アーカイブの作成
tar -czvf data0809.tar.gz *

# アーカイブファイルの展開
tar -xzvf data0809.tar.gz

```

アーカイブ例
```bash
baki504@DESKTOP-RECB7LE:~$ ls -l
total 64
-rw-rw-rw- 1 baki504 baki504 20480 Sep 29 15:24 archive.tar
-rw-rw-rw- 1 baki504 baki504  5221 Sep 29 15:24 archive.tar.gz
-rw-rw-rw- 1 baki504 baki504 13388 Sep 29 15:22 longtext.txt
```

### 主なオプション

| 省略 | 非省略 | 意味 |
|:------|:-------|:-----|
| -c | --create | 新しいアーカイブを作成する |
| -x | --extract, --get | アーカイブからファイルを抽出する |
| -z | --gzip | gzip圧縮/アーカイブの展開 拡張子は「.tar.gz」又は「.tgz」 |
| -v | --verbose | 詳細出力 |
| -f | --file=アーカイブ | ファイル名の指定 |


## grep
指定したパターンに一致する行を返す。

### サンプル

```bash
# file.txtから特定のパターンを抽出
grep pattern file.txt

# 一致する行を含むファイル名を表示
grep -rl pattern .

# 単語単位で検索(以下の例では"video"が一致し、videoxxxなどは一致しない)
grep -w video file.txt

# 前後行の表示(以下の例では前後2行)
grep -2 pattern file.txt

# 前2行も表示
grep -B 2 pattern file.txt

# 後2行も表示
grep -A 2 pattern file.txt

# 行番号付き
grep -n pattern file.txt

```

### 主なオプション
| 省略 | 非省略 | 意味 |
|:------|:-------|:------|
| -r | --recursive | サブディレクトリも含めて検索 |
| -w | --word-regrep | 単語単位で検索 |
| -行数 | - | パターン一致行の前後「行数」行を表示 |
| -B 行数 | --before-context=行数 | 一致した行の前「行数」行を表示 |
| -A 行数 | --after-context=行数 | 一致した行の後「行数」行を表示  |

<!-- ********** リファレンスひな型　ここから **********
↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 

### サンプル

```bash
```

### 主なオプション
| 省略 | 非省略 | 意味 |
|:------|:-------|:------|
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
********** リファレンスひな型　ここまで **********
・タイトルはひとことでコマンドを説明する（なるべく自分の言葉で説明する）
・表にはなるべく例に沿ったものを載せる
-->



[Back to Outline](https://github.com/baki504/knowledge/blob/master/README.md)
