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
  use "nvim-tree/nvim-tree.lua"

  use 'tpope/vim-commentary' -- For Commenting gcc & gc

  use { "sitiom/nvim-numbertoggle" }
  
  use 'navarasu/onedark.nvim'

  -- use 'pruse/tagbar' -- Tagbar for code navigation
  use 'terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors
  use {
      'HakonHarnes/img-clip.nvim',
  }

  use "jbyuki/venn.nvim"
  -- use {
  --     'glepnir/dashboard-nvim',
  --     event = 'VimEnter',
  --     -- theme = 'hyper',
  --     config = function ()
  --         require("dashboard").setup{
  --             week_header = {
  --                 enable = true,
  --             },
  --             shortcut = {
  --                 { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
  --                 {
  --                     icon = ' ',
  --                     icon_hl = '@variable',
  --                     desc = 'Files',
  --                     group = 'Label',
  --                     action = 'Telescope find_files',
  --                     key = 'f',
  --                 },
  --                 {
  --                     desc = ' Apps',
  --                     group = 'DiagnosticHint',
  --                     action = 'Telescope app',
  --                     key = 'a',
  --                 },
  --                 {
  --                     desc = ' dotfiles',
  --                     group = 'Number',
  --                     action = 'Telescope dotfiles',
  --                     key = 'd',
  --                 },
  --     }
  -- }
  --    end,
  --     requires = {'nvim-tree/nvim-web-devicons'}
  -- }


  use {
    'nvim-lualine/lualine.nvim',
    -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  use {
      "lukas-reineke/indent-blankline.nvim",
      config = function()
          -- opts = {}
          -- Other blankline configuration here
          -- require("ibl").setup(require("indent-rainbowline").make_opts(opts))
          local highlight = {
              "RainbowRed",
              "RainbowYellow",
              "RainbowBlue",
              "RainbowOrange",
              "RainbowGreen",
              "RainbowViolet",
              "RainbowCyan",
          }

          local hooks = require "ibl.hooks"
          -- create the highlight groups in the highlight setup hook, so they are reset
          -- every time the colorscheme changes
          hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
              vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
              vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
              vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
              vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
              vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
              vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
              vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
          end)

          require("ibl").setup { indent = { highlight = highlight } }
      end,
  }

  -- use {
  --   "3rd/image.nvim",
  --   build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
  --   opts = {
  --       processor = "magick_cli",
  --   }
-- }

    use {
        "3rd/image.nvim",
        dependencies = {
            {
                "nvim-treesitter/nvim-treesitter",
                build = ":TSUpdate",
                config = function()
                    require("nvim-treesitter.configs").setup({
                        ensure_installed = { "markdown" },
                        highlight = { enable = true },
                    })
                end,
            },
        },
        opts = {
            backend = "kitty",
            integrations = {
                markdown = {
                    enabled = true,
                    clear_in_insert_mode = false,
                    download_remote_images = true,
                    only_render_image_at_cursor = false,
                    filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
                },
                neorg = {
                    enabled = true,
                    clear_in_insert_mode = false,
                    download_remote_images = true,
                    only_render_image_at_cursor = false,
                    filetypes = { "norg" },
                },
            },
            max_width = nil,
            max_height = nil,
            max_width_window_percentage = nil,
            max_height_window_percentage = 50,
            kitty_method = "normal",
        },
        config = function ()
            require('image').setup({
                integrations = {
                    markdown = {
                        resolve_image_path = function(document_path, image_path, fallback)
                            -- document_path is the path to the file that contains the image
                            -- image_path is the potentially relative path to the image. for
                            -- markdown it's `![](this text)`

                            -- you can call the fallback function to get the default behavior
                            return fallback(document_path, image_path)
                        end,
                    }
                }
            })
        end
    }



  -- use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'MunifTanjim/nui.nvim'        -- it's a dependency
  use 'xeluxee/competitest.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use {'nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'}}

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
  -- use "tpope/vim-fugitive"
  use "ThePrimeagen/harpoon"
  use "dpelle/vim-LanguageTool"
  use({
      "utilyre/barbecue.nvim",
      tag = "*",
      requires = {
          "SmiteshP/nvim-navic",
          "nvim-tree/nvim-web-devicons", -- optional dependency
      },
      after = "nvim-web-devicons", -- keep this if you're using NvChad
      config = function()
          require("barbecue").setup()
      end,
  })

  use 'lervag/vimtex'
  use({
      "HampusHauffman/block.nvim",
      config = function()
          require("block").setup({})
      end
  })
  -- use 'luk400/vim-jukit'
  use 'tomtom/tcomment_vim'


  use({
      'MeanderingProgrammer/render-markdown.nvim',
      after = { 'nvim-treesitter' },
      requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
      -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
      -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
      config = function()
          require('render-markdown').setup({})
      end,
  })

end)
