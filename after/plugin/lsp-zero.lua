local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
})


local cmp = require('cmp')
-- cmp.SelectBehavior.Selet
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<up>']      =     cmp.mapping.select_prev_item(cmp_select),
    ['<down>']    =     cmp.mapping.select_next_item(cmp_select),
    ['<Tab>']     =     cmp.mapping.confirm({select = true}),
    ['<S-Tab>']     =     cmp.mapping.complete(),

    -- ['<up>']      =     cmp.mapping.select_prev_item(cmp_select),
    -- ['<down>']      =     cmp.mapping.select_next_item(cmp_select),
    -- ['<tab>']      =     cmp.mapping.confirm({select = true}),
    -- ['<TAB>']  =     cmp.mapping.complete(),
})


lsp.set_preferences({
    -- sign_icons = {}
})
-- lsp.nvim_workspace()
require('luasnip.loaders.from_snipmate').lazy_load()
lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    sources = {
        {name= '~/.config/nvim/snippets'},
    --     {name = 'path'},
        {name = 'nvim_lsp', keyword_length = 1},
        {name = 'buffer', keyword_length = 1},
    }
})

lsp.on_attach(function (client, buf)
    local opts = {buffer=buf, remap = false }
    vim.keymap.set('n', 'gd',          function ()   vim.lsp.buf.definition()            end, opts)
    vim.keymap.set('n', 'K',           function ()   vim.lsp.buf.hover()                 end, opts)
    vim.keymap.set('n', '<leader>vws', function ()   vim.lsp.buf.workspace_symbol()      end, opts)
    vim.keymap.set('n', '<leader>vca', function ()   vim.lsp.buf.code_action()           end, opts)
    vim.keymap.set('n', '<leader>vrr', function ()   vim.lsp.buf.references()            end, opts)
    vim.keymap.set('i', '<C-h>',       function ()   vim.lsp.buf.signature_help()        end, opts)
    vim.keymap.set('n', '<leader>vrn', function ()   vim.lsp.buf.rename()   end, opts)
    vim.keymap.set('n', '[d',          function ()   vim.lsp.buf.diagnostic.goto_next()  end, opts)
    vim.keymap.set('n', ']d',          function ()   vim.lsp.buf.diagnostic.goto_prev()  end, opts)
    vim.keymap.set('n', '<leader>vd',  function ()   vim.lsp.buf.diagnostic.open_float() end, opts)

end)

-- require('luasnip').setup()
-- require('luasnip.loaders.from_snipmate').lazy_load()
lsp.setup()
