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
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" for coc 
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
" set cursorline
" set cursorcolumn
" set expandtab
" set nowrap
" set incsearch
" set ignorecase
" set smartcase
" set wildmenu
" colorscheme molokai
hi Normal guifg=#44cc44 guibg=NONE ctermbg=NONE

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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'glepnir/dashboard-nvim'

call plug#end()

:colorscheme PaperColor
set encoding=UTF-8
set completeopt-=preview " For No Previews

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE


""" Mapping

" NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <F8> :TagbarToggle<CR>


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

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
