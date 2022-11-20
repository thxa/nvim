-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround' -- Surrounding ysw
  use 'preservim/nerdtree' -- NerdTree
  use 'dense-analysis/ale'
  use 'tpope/vim-commentary' -- For Commenting gcc & gc
  
  -- use 'vim-airline/vim-airline' -- Status bar
  
  use 'ap/vim-css-color' -- CSS Color Preview
  use 'rafi/awesome-vim-colorschemes' -- Retro Scheme
  use 'ryanoasis/vim-devicons' -- Developer Icons
  use 'tc50cal/vim-terminal' -- Vim Terminal
  
  -- use 'pruse/tagbar' -- Tagbar for code navigation
  
  use 'terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors
  use 'neoclide/coc.nvim'  -- Auto Completion
  use 'glepnir/dashboard-nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- For run media-files.
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'MunifTanjim/nui.nvim'        -- it's a dependency
  use 'xeluxee/competitest.nvim'
end)
