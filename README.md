### 概要

Pythonの機械学習のお試し環境のDockerイメージです。

コンテナの参考例として、*docker-compose.yml*を同梱しました。


---

### 導入手順

※ ビルドに時間を要します。 (自分の環境ですと30〜40分ほど)

```sh
docker-compose build

# もしくは...
docker build ./ -t apollostudio/python-ml-kit:py3.6.4-alpine3.7
```

上記のどちらかを実行すると、*apollostudio/python-ml-kit:py3.6.4-alpine3.7*というイメージが作成される。


---

### イメージについて

[*python:3.6.4-alpine3.7*](https://hub.docker.com/_/python/)をベースに、必要と思われるものを追加でインストールしたものになる。

詳細は*Dockerfile*を参照ください。

作業用ディレクトリ`workspace`をイメージ内で作成しています。

#### インストールするPythonモジュール一覧

* numpy
* pandas
* scipy
* scikit-learn
* matplotlib
* seaborn

他に取り込みたいものは適宜インストールしてください。

---

### その他

VSCodeでPythonコーディング環境を構築したい方や、AnacondaでPython実行環境を構築したい方は、次のリポジトリをご覧ください。

https://github.com/apollostudio/setup-python
