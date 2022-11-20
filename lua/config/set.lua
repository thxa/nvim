local o = vim.o -- options

o.number = true
o.relativenumber = true
o.scrolloff = 10
o.autoindent=true
o.smarttab = true
o.shiftwidth=4
o.softtabstop=4
o.mouse="a"
o.nobackup=true
o.smartcase=true
o.expandtab=true
o.nowrap=true
o.nohlsearch=true
o.incsearch=true
o.clipboard="unnamedplus"
o.encoding="UTF-8"
-- o.completeopt -= o.preview
o.completeopt = -1

-- for coc --
o.hidden = true
o.nobackup = true
o.nowritebackup = true
o.cmdheight=2
o.updatetime=300
o.shortmess="c"

-- set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
-- set cursorline
-- set cursorcolumn
-- set ignorecase
-- set wildmenu
-- colorscheme molokai


-- vim.api.nvim_create_autocmd('Filetype', {  })
-- " If the current file type is HTML, set indentation to 2 spaces.
-- autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype css setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype js setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype clang setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype java setlocal tabstop=2 shiftwidth=2 expandtab
-- autocmd Filetype py setlocal tabstop=4 shiftwidth=4 expandtab
