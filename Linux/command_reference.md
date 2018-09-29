
忘れがちなコマンド、新しく知ったコマンドなどをまとめる。



## tar
複数のファイルをひとつにまとめたアーカイブファイルを作成・展開する。

### アーカイブの作成

```bash
tar -czvf data0809.tar.gz *
```

アーカイブ例
```bash
baki504@DESKTOP-RECB7LE:~$ ls -l
total 64
-rw-rw-rw- 1 baki504 baki504 20480 Sep 29 15:24 archive.tar
-rw-rw-rw- 1 baki504 baki504  5221 Sep 29 15:24 archive.tar.gz
-rw-rw-rw- 1 baki504 baki504 13388 Sep 29 15:22 longtext.txt
```

### アーカイブファイルの展開

```bash
tar -xzvf data0809.tar.gz
```

### 主なオプション

| 省略 | 非省略 | 意味 |
|------|-------|------|
| -c | --create | 新しいアーカイブを作成する |
| -x | --extract, --get | アーカイブからファイルを抽出する |
| -z | --gzip | gzip圧縮/アーカイブの展開 拡張子は「.tar.gz」又は「.tgz」 |
| -v | --verbose | 詳細出力 |
| -f | --file=アーカイブ | ファイル名の指定 |


## コピー用
| 省略 | 非省略 | 意味 |
|------|-------|------|
|  |  |  |


* gzip
* grep
* more
* alternative
* wc
* find
* touch
* df
* curl

## コピー用
| 省略 | 非省略 | 意味 |
|------|-------|------|
|  |  |  |



[Back to Outline](https://github.com/baki504/knowledge/blob/master/README.md)
