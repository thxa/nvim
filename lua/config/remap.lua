local M = require("config.keymap")

local nmap = M.nmap
local nnoremap = M.nnoremap
local inoremap = M.inoremap

vim.g.mapleader=" "
-- nnoremap("<left>", "b")
-- nnoremap("<right>", "w")
nnoremap("<c-/>", "<gcc>")
nnoremap("<F5>", ":w <CR> :!g++ -o %:r % && xfce4-terminal -e ./%:r -H <CR>")
nnoremap("<F7>", ":w <CR> :!g++ -o %:r % && ./%:r < %:r.in <CR>")
nnoremap("<F6>", ":e %:r.in <CR>")
nnoremap("<F2>", ":!cat %<CR>")
nnoremap("<F3>", ":!cat % | xclip -sel clip<CR>")

-- create new file
nnoremap("<leader>e", ":e ")

-- explort file as tree
nnoremap("<C-t>", ":NERDTreeToggle<CR>")
nnoremap("<C-f>", ":NERDTreeFind<CR>")

-- inoremap("<Tab>", 'coc#pum#visible() ? coc#pum#confirm() : "<Tab>"', { silent=true, expr=true, replace_keycodes=false })
inoremap("<Tab>", 'coc#pum#visible() ? coc#pum#confirm() : "<TAB>"', { silent=true, expr=true, replace_keycodes=false })

-- Tagbar key maps
nmap("<F8>", ":TagbarToggle<CR>")
-- telescope keys maps
nnoremap("<leader>f", ":Telescope find_files <CR>")
nnoremap("<leader>g", ":Telescope live_grep <CR>")
nnoremap("<leader>w", ":Telescope current_buffer_fuzzy_find <CR>")
nnoremap("<leader>k", ":Telescope keymaps    <CR>")
nnoremap("<leader>m", ":Telescope man_pages  <CR>")
nnoremap("<leader>t", ":Telescope filetypes  <CR>")
nnoremap("<leader><Tab>", ":Telescope oldfiles <CR><CR>")
nnoremap("<C-s>", ":w <CR>")
