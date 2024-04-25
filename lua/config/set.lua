-- local o = vim.o -- options
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 10
vim.o.autoindent=true
vim.o.smarttab = true
vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.mouse="a"
vim.o.nobackup=true
vim.o.smartcase=true
vim.o.expandtab=true
vim.o.nowrap=true
vim.o.nohlsearch=true
vim.o.incsearch=true
vim.o.clipboard="unnamedplus"
vim.o.encoding="UTF-8"
-- o.completeopt -= o.preview
vim.o.completeopt = -1
-- for coc --
vim.o.hidden = true
vim.o.nobackup = true
vim.o.nowritebackup = true
vim.o.cmdheight=2
vim.o.updatetime=300
vim.o.shortmess="c"


-- vim.api.nvim_command("BlockOn")
--
-- set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
-- set cursorline
-- set cursorcolumn
-- set ignorecase
-- set wildmenu
-- colorscheme molokai
-- vim.cmd[[colorscheme tokyonight]]


-- vim.api.nvim_create_autocmd('Filetype', {  })
--
-- " If the current file type is HTML, set indentation to 2 spaces.
-- autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype css setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype js setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype clang setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype java setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype py setlocal tabstop=4 shiftwidth=4 expandtab
