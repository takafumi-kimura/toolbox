# anyenvインストール
brew install anyenv
anyenv install --init --force-init
exec $SHELL -l
anyenv install nodenv
anyenv install rbenv
exec $SHELL -l
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

# nodenvインストール
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/nodenv-default-packages.git $(nodenv root)/plugins/nodenv-default-packages

# 設定ファイル読み込み
# TODO
# 設定ファイル -> $(nodenv root)/default-packages

# nodejsインストール
# ↓インストール可能なリストの更新↓
# anyenv update
# ↓最新バージョンの確認↓
# nodenv install -l
nodenv install 14.13.1
# 特定のディレクトリ配下でのみ使いたいバージョンを指定するときは nodedenv local xx.xx.xを使う
nodenv global 14.13.1
exec $SHELL -l





# Reactのシングルページ(本番用)をローカルで起動するのに便利
yarn global add serve

# 使い方： `serve -s target_directory`

