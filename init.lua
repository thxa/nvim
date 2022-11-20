-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
-- https://www.youtube.com/watch?v=x2QJYq4IX6M
require("config.plugins")
require('lualine').setup()
require("config.color")
require("config.set")
require("config.remap")

-- :CocInstall coc-python coc-clangd coc-snippets
-- " :CocCommand snippets.edit... FOR EACH FILE TYPE
