### 概要

だいぶ昔に作ったPythonの機械学習のお試し環境のDockerイメージです。

好きなようにカスタマイズして使ってください。

### 導入手順

※ ビルドに時間を要します。

```sh
docker-compose build
```

### イメージについて

作業用ディレクトリ`workspace`をイメージ内で作成しています。

#### インストールするPythonモジュール一覧

* numpy
* pandas
* scipy
* scikit-learn
* matplotlib
* seaborn

他に取り込みたいものは適宜インストールしてください。
