local M = require("config.keymap")
local nmap = M.nmap
local nnoremap = M.nnoremap
local xnoremap = M.xnoremap
-- local inoremap = M.inoremap

vim.g.mapleader=" "
-- nnoremap("<left>", "b")
-- nnoremap("<right>", "w")

nnoremap("<F2>", ":!cat %<CR>")
nnoremap("<F3>", ":!cat % | xclip -sel clip<CR>")
nnoremap("<leader>c", ":cd %:p:h <CR>")
-- nnoremap("<leader>r", ":Ex <CR>")
nnoremap("<F6>", ":e %:r.in <CR>")

-- create new file
-- nnoremap("<C-s>", ":w <CR>")

function RunCommand(a)
    return ":term " .. a .. " <CR>";
end

-- telescope keys maps
function Telescope_map()
    nnoremap("<leader>f", ":Telescope find_files <CR>")
    nnoremap("<leader>g", ":Telescope live_grep <CR>")
    nnoremap("<leader>s", ":Telescope current_buffer_fuzzy_find <CR>")
    nnoremap("<leader>k", ":Telescope keymaps    <CR>")
    nnoremap("<leader>m", ":Telescope man_pages  <CR>")
    nnoremap("<leader>t", ":Telescope filetypes  <CR>")
    nnoremap("<leader><Tab>", ":Telescope oldfiles <CR><CR>")
    vim.api.nvim_set_keymap(
    'n',
    '<C-p>',
    ":lua require'telescope'.extensions.project.project{display_type='full'}<CR>",
    -- ":lua require'telescope'.extensions.project.project{}<CR>",
    {noremap = true, silent = true}
    )
end

-- function Coc_map()
--     -- Autocompletion
--     -- inoremap("<Tab>", 'coc#pum#visible() ? coc#pum#confirm() : "<Tab>"', { silent=true, expr=true, replace_keycodes=false })
--     inoremap("<Tab>", 'coc#pum#visible() ? coc#pum#confirm() : "<TAB>"', { silent=true, expr=true, replace_keycodes=false })
-- end


-- function Ntree_map()
--     -- explore file as tree
--     nnoremap("<C-t>", ":NERDTreeToggle<CR>")
--     nnoremap("<C-f>", ":NERDTreeFind<CR>")
-- end


function NvimTree_map()
    -- explore file as tree
    nnoremap("<C-t>", ":NvimTreeToggle<CR>")
    nnoremap("<C-f>", ":NvimTreeFocus<CR>")
    -- nnoremap("<C-v>", ":NvimTreeFindFile<CR>")
    -- nnoremap("<C-c>", ":NvimTreeCollapse<CR>")
end



function C_map()
    -- nnoremap("<c-/>", "<gcc>")
    -- nnoremap("<F5>", ":w <CR> :!g++ -o %:r % && xfce4-terminal -e ./%:r -H <CR>")
    nnoremap("<leader>w", ":w<CR>" .. RunCommand("gcc -o %:r % && ./%:r"))
    nnoremap("<leader>e", ":w <CR> :!gcc -o %:r % && ./%:r < %:r.in <CR>")
end

function Cpp_map()
    -- nnoremap("<F5>", ":w <CR> :!g++ -o %:r % && xfce4-terminal -e ./%:r -H <CR>")
    nnoremap("<leader>w", ":w <CR>" .. RunCommand("g++ -o %:r  % && ./%:r"))
    nnoremap("<leader>e", ":w <CR> :!g++ -o %:r % && ./%:r < %:r.in <CR>")
end

function Python_map()
    nnoremap("<leader>e", ":w <CR>" .. RunCommand("python manage.py runserver"))
    nnoremap("<leader>w", ":w <CR>" .. RunCommand("python manage.py makemigrations; python manage.py migrate"))
    nnoremap("<leader>q", ":w <CR>" .. RunCommand("python %"))
    -- nnoremap("<leader>r", ":w <CR>" .. RunCommand("python manage.py shell"))
    -- nnoremap("<leader>e", ":w <CR> :!python % < %:r.in <CR>")

    -- nnoremap("<leader>r",     ":MagmaEvaluateOperator<CR>")
    -- nnoremap("<leader>rr",    ":MagmaEvaluateLine<CR>")
    -- xnoremap("<leader>r",     ":<C-u>MagmaEvaluateVisual<CR>")
    -- nnoremap("<leader>rc",    ":MagmaReevaluateCell<CR>")
    -- nnoremap("<leader>rd",    ":MagmaDelete<CR>")
    -- nnoremap("<leader>ro",    ":MagmaShowOutput<CR>")

    -- -- vim.g.magma_automatically_open_output = false
    -- -- vim.g.magma_image_provider = "ueberzug"

    -- function MagmaInitPython()
    --     vim.cmd[[
    --     :MagmaInit python3
    --     :MagmaEvaluateArgument a=5
    --     ]]
    -- end
    -- -- function MagmaInitCSharp()
    -- --     vim.cmd[[
    -- --     :MagmaInit .net-csharp
    -- --     :MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof(System.Object),"text/plain");
    -- --     ]]
    -- -- end
    -- -- function MagmaInitFSharp()
    -- --     vim.cmd[[
    -- --     :MagmaInit .net-fsharp
    -- --     :MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof<System.Object>,"text/plain")
    -- --     ]]
    -- -- end
    -- vim.cmd[[
    -- :command MagmaInitPython lua MagmaInitPython()
    -- -- :TSBufEnable highlight
    -- ]]
end

function Latex_map()

    vim.api.nvim_command [[set makeprg=pdflatex\ -interaction=nonstopmode\ -synctex=-1\ %:p]]
    -- vim.api.nvim_command([[set makeprg=latexmk\ -pdflatex='pdflatex\ -interaction=nonstopmode\ -synctex=-1'\ %:p]])
    -- vim.api.nvim_command [[set errorformat=%E!\ LaTeX\ %trror:\ %m,
	-- \%E!\ %m,
	-- \%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,
	-- \%+W%.%#\ at\ lines\ %l--%*\\d,
	-- \%WLaTeX\ %.%#Warning:\ %m,
	-- \%Cl.%l\ %m,
	-- \%+C\ \ %m.,
	-- \%+C%.%#-%.%#,
	-- \%+C%.%#[]%.%#,
	-- \%+C[]%.%#,
	-- \%+C%.%#%[{}\\]%.%#,
	-- \%+C<%.%#>%.%#,
	-- \%C\ \ %m,
	-- \%-GSee\ the\ LaTeX%m,
	-- \%-GType\ \ H\ <return>%m,
	-- \%-G\ ...%.%#,
	-- \%-G%.%#\ (C)\ %.%#,
	-- \%-G(see\ the\ transcript%.%#),
	-- \%-G\\s%#,
	-- \%+O(%*[^()])%r,
	-- \%+O%*[^()](%*[^()])%r,
	-- \%+P(%f%r,
	-- \%+P\ %\\=(%f%r,
	-- \%+P%*[^()](%f%r,
	-- \%+P[%\\d%[^()]%#(%f%r,
	-- \%+Q)%r,
	-- \%+Q%*[^()])%r,
	-- \%+Q[%\\d%*[^()])%r ]]

    -- Compile latex and send errors to cwindow via make command ...
    nnoremap("<leader>w", 
        ":w <CR>"                                                       ..
        ":cd %:p:h <CR>"                                                ..
        -- ":silent !pdflatex %:p <CR>"                                 ..
        ":silent make <CR>"                                                    ..
        ":cd - <CR>"                                                    ..
        ":cwindow<CR>"                                                  ..
        ":redraw! <CR>"
        -- ":copen<CR>"                                          ..
    )

    -- Open PDF file
    function getpos()
        -- _, row, col, _ = unpack(vim.fn.getpos('.'))
        row, col = unpack(vim.api.nvim_win_get_cursor(0))
        return row .. ':' ..  col
    end
    nnoremap("<leader>e",
    ":cd %:p:h <CR>" ..
    ":lua print(getpos())<CR>" .. 
    -- ":silent !okular %:p:r.pdf & disown<CR>" ..
    [[:lua vim.api.nvim_command("silent !zathura %:p:r.pdf --synctex-forward "  .. getpos() .. ":%:p &disown") <CR>]]
    -- ":cd - <CR>"
    )
    -- Show Compile Errors 
    nnoremap("<F8>",
    ":copen<CR>"
    )

end


function Julia_map()
    nnoremap("<leader>w", ":w <CR>" .. RunCommand("julia %"))
    nnoremap("<leader>e", ":w <CR> :!julia % < %:r.in <CR>")
end



function Json_map()
    nnoremap("<leader>w", ":%!jq '.'")
end



-- keymaps shortcuts
Telescope_map()
NvimTree_map()
-- Coc_map()
-- Ntree_map()
--
-- Set tcomment_vim configuration options
vim.g.tcomment_mapleader1 = '<leader>f'  -- Leader key for commenting
vim.g.tcomment_mapleader2 = '<leader>T'  -- Leader key for toggling comments

-- vim.api.nvim_create_autocmd
-- vim.api.nvim_command [[ autocmd BufRead,BufNewFile *.c c_map ]]
-- vim.api.nvim_command ([[ autocmd BufRead,BufNewFile *.cpp cpp_map ]])
-- Auto command in any type you want
vim.api.nvim_command "autocmd Filetype c lua C_map()"
vim.api.nvim_command "autocmd Filetype cpp lua Cpp_map()"
vim.api.nvim_command "autocmd Filetype python lua Python_map()"
vim.api.nvim_command "autocmd Filetype tex lua Latex_map()"
vim.api.nvim_command "autocmd Filetype julia lua Julia_map()"
vim.api.nvim_command "autocmd Filetype json lua Json_map()"

-- cpp_map()

-- Tagbar key maps
-- nmap("<F8>", ":TagbarToggle<CR>")
