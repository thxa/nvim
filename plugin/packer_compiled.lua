-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/t/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/t/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/t/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/t/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/t/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbecue.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbarbecue\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/t/.local/share/nvim/site/pack/packer/opt/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  ["block.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nblock\frequire\0" },
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/block.nvim",
    url = "https://github.com/HampusHauffman/block.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["competitest.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/competitest.nvim",
    url = "https://github.com/xeluxee/competitest.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["image.nvim"] = {
    config = { "\27LJ\2\n\23\0\3\a\0\0\0\4\18\3\2\0\18\5\0\0\18\6\1\0D\3\3\0�\1\1\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\17integrations\1\0\1\17integrations\0\rmarkdown\1\0\1\rmarkdown\0\23resolve_image_path\1\0\1\23resolve_image_path\0\0\nsetup\nimage\frequire\0" },
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/image.nvim",
    url = "https://github.com/3rd/image.nvim"
  },
  ["img-clip.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/img-clip.nvim",
    url = "https://github.com/HakonHarnes/img-clip.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\17\00026\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\15\0005\4\16\0B\0\4\1K\0\1\0\1\0\1\afg\f#56B6C2\16RainbowCyan\1\0\1\afg\f#C678DD\18RainbowViolet\1\0\1\afg\f#98C379\17RainbowGreen\1\0\1\afg\f#D19A66\18RainbowOrange\1\0\1\afg\f#61AFEF\16RainbowBlue\1\0\1\afg\f#E5C07B\18RainbowYellow\1\0\1\afg\f#E06C75\15RainbowRed\16nvim_set_hl\bapi\bvim�\2\1\0\6\0\r\0\0195\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\4\4\0019\4\5\0043\5\6\0B\2\3\0016\2\1\0'\4\a\0B\2\2\0029\2\b\0025\4\v\0005\5\t\0=\0\n\5=\5\f\4B\2\2\1K\0\1\0\vindent\1\0\1\vindent\0\14highlight\1\0\1\14highlight\0\nsetup\bibl\0\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\1\b\0\0\15RainbowRed\18RainbowYellow\16RainbowBlue\18RainbowOrange\17RainbowGreen\18RainbowViolet\16RainbowCyan\0" },
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/t/.local/share/nvim/site/pack/packer/opt/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-nonicons"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nvim-nonicons",
    url = "https://github.com/yamatsum/nvim-nonicons"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["render-markdown.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20render-markdown\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/t/.local/share/nvim/site/pack/packer/opt/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  tcomment_vim = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/tcomment_vim",
    url = "https://github.com/tomtom/tcomment_vim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-LanguageTool"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/vim-LanguageTool",
    url = "https://github.com/dpelle/vim-LanguageTool"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimtex = {
    loaded = true,
    path = "/home/t/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\17\00026\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\15\0005\4\16\0B\0\4\1K\0\1\0\1\0\1\afg\f#56B6C2\16RainbowCyan\1\0\1\afg\f#C678DD\18RainbowViolet\1\0\1\afg\f#98C379\17RainbowGreen\1\0\1\afg\f#D19A66\18RainbowOrange\1\0\1\afg\f#61AFEF\16RainbowBlue\1\0\1\afg\f#E5C07B\18RainbowYellow\1\0\1\afg\f#E06C75\15RainbowRed\16nvim_set_hl\bapi\bvim�\2\1\0\6\0\r\0\0195\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\4\4\0019\4\5\0043\5\6\0B\2\3\0016\2\1\0'\4\a\0B\2\2\0029\2\b\0025\4\v\0005\5\t\0=\0\n\5=\5\f\4B\2\2\1K\0\1\0\vindent\1\0\1\vindent\0\14highlight\1\0\1\14highlight\0\nsetup\bibl\0\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\1\b\0\0\15RainbowRed\18RainbowYellow\16RainbowBlue\18RainbowOrange\17RainbowGreen\18RainbowViolet\16RainbowCyan\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: image.nvim
time([[Config for image.nvim]], true)
try_loadstring("\27LJ\2\n\23\0\3\a\0\0\0\4\18\3\2\0\18\5\0\0\18\6\1\0D\3\3\0�\1\1\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\17integrations\1\0\1\17integrations\0\rmarkdown\1\0\1\rmarkdown\0\23resolve_image_path\1\0\1\23resolve_image_path\0\0\nsetup\nimage\frequire\0", "config", "image.nvim")
time([[Config for image.nvim]], false)
-- Config for: block.nvim
time([[Config for block.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nblock\frequire\0", "config", "block.nvim")
time([[Config for block.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd barbecue.nvim ]]

-- Config for: barbecue.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbarbecue\frequire\0", "config", "barbecue.nvim")

vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd render-markdown.nvim ]]

-- Config for: render-markdown.nvim
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20render-markdown\frequire\0", "config", "render-markdown.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
