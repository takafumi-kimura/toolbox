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
