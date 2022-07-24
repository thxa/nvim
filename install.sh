BASE_DIR=pwd
COC_INSTALL=plugged/coc.nvim/

nvim -c "PlugInstall"
sudo pacman -S ctags yarn python-pip
cd $COC_INSTALL
yarn install && yarn build
cd $BASE_DIR

nvim -c "CocInstall coc-python coc-java coc-clangd coc-lua coc-json coc-snippets coc-html-css-support coc-tsserver"
