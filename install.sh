BASE_DIR=pwd
COC_INSTALL=plugged/coc.nvim/

nvim -c "PlugInstall"
sudo pacman -S ctags yarn

cd $COC_INSTALL
yarn install && yarn build
cd $BASE_DIR

nvim -c "CocInstall coc-python coc-java coc-clangd"