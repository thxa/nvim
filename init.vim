" https://github.com/NeuralNine/config-files/blob/master/init.vim

set number
set relativenumber
set scrolloff=10
set autoindent
set smarttab
set shiftwidth=4
set softtabstop=4
set mouse=a
set nobackup
set smartcase
set expandtab
set nowrap
set nohlsearch
set incsearch

" set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" set cursorline
" set cursorcolumn
" set ignorecase
" set wildmenu
" colorscheme molokai

"""Plugs
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'glepnir/dashboard-nvim'

"For run media-files.
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
call plug#end()

colorscheme gruvbox
hi Normal guibg=none guifg=none ctermbg=none

set encoding=UTF-8
set completeopt-=preview " For No Previews

" for coc 
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE


""" Mapping

let mapleader=" "

nnoremap <left> b
nnoremap <right> w

nnoremap <F5> :w <CR> :!g++ -o %:r % && xfce4-terminal -e ./%:r -H <CR>
nnoremap <F7> :w <CR> :!g++ -o %:r % && ./%:r < %:r.in <CR>
nnoremap <F6> :e %:r.in <CR> 
nnoremap <F2> :!cat %<CR>


" NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "<Tab>"

" Tagbar key maps
nmap <F8> :TagbarToggle<CR>

" telescope keys maps
nnoremap <leader>f :Telescope find_files <CR>
nnoremap <leader>g :Telescope live_grep <CR>
nnoremap <leader>w :Telescope current_buffer_fuzzy_find <CR>
nnoremap <leader>k :Telescope keymaps    <CR>
nnoremap <leader>m :Telescope man_pages  <CR>
nnoremap <leader>t :Telescope filetypes  <CR>
nnoremap <leader><Tab> :Telescope oldfiles <CR><CR>


nnoremap <C-s> :w <CR>

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype js setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype clang setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype java setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype py setlocal tabstop=4 shiftwidth=4 expandtab

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


