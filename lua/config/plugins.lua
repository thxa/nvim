-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
      'yamatsum/nvim-nonicons',
      requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'tpope/vim-surround' -- Surrounding ysw
  use 'preservim/nerdtree' -- NerdTree
  use 'dense-analysis/ale'
  use 'tpope/vim-commentary' -- For Commenting gcc & gc
  use 'rafi/awesome-vim-colorschemes' -- Retro Scheme

  -- use 'pruse/tagbar' -- Tagbar for code navigation
  -- use 'neoclide/coc.nvim'  -- Auto Completion

  use 'terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors
  use 'glepnir/dashboard-nvim'

  use {
    'nvim-lualine/lualine.nvim',
    -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'MunifTanjim/nui.nvim'        -- it's a dependency
  use 'xeluxee/competitest.nvim'


  use {
      'nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'}
  }
  -- use 'sirver/ultisnips'
  -- use 'yamatsum/nvim-nonicons'

  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
  use "tpope/vim-fugitive"
  use "ThePrimeagen/harpoon"
  use "dpelle/vim-LanguageTool"
end)
