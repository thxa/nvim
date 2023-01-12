local M = require("config.keymap")
local nmap = M.nmap
local nnoremap = M.nnoremap
local inoremap = M.inoremap

vim.g.mapleader=" "
-- nnoremap("<left>", "b")
-- nnoremap("<right>", "w")

nnoremap("<F2>", ":!cat %<CR>")
nnoremap("<F3>", ":!cat % | xclip -sel clip<CR>")
nnoremap("<leader>c", ":cd %:p:h <CR>")
nnoremap("<leader>e", ":Ex <CR>")
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
    nnoremap("<leader>w", ":Telescope current_buffer_fuzzy_find <CR>")
    nnoremap("<leader>k", ":Telescope keymaps    <CR>")
    nnoremap("<leader>m", ":Telescope man_pages  <CR>")
    nnoremap("<leader>t", ":Telescope filetypes  <CR>")
    nnoremap("<leader><Tab>", ":Telescope oldfiles <CR><CR>")
end

function Coc_map()
    -- Autocompletion
    -- inoremap("<Tab>", 'coc#pum#visible() ? coc#pum#confirm() : "<Tab>"', { silent=true, expr=true, replace_keycodes=false })
    inoremap("<Tab>", 'coc#pum#visible() ? coc#pum#confirm() : "<TAB>"', { silent=true, expr=true, replace_keycodes=false })
end


function Ntree_map()
    -- explore file as tree
    nnoremap("<C-t>", ":NERDTreeToggle<CR>")
    nnoremap("<C-f>", ":NERDTreeFind<CR>")
end


function C_map()
    -- nnoremap("<c-/>", "<gcc>")
    -- nnoremap("<F5>", ":w <CR> :!g++ -o %:r % && xfce4-terminal -e ./%:r -H <CR>")
    nnoremap("<F5>", RunCommand("gcc -o %:r % && ./%:r"))
    nnoremap("<F7>", ":w <CR> :!gcc -o %:r % && ./%:r < %:r.in <CR>")
end

function Cpp_map()
    -- nnoremap("<F5>", ":w <CR> :!g++ -o %:r % && xfce4-terminal -e ./%:r -H <CR>")
    nnoremap("<F5>", RunCommand("g++ -o %:r  % && ./%:r"))
    nnoremap("<F7>", ":w <CR> :!g++ -o %:r % && ./%:r < %:r.in <CR>")
end

function Python_map()
    nnoremap("<F5>", RunCommand("python %"))
    nnoremap("<F7>", ":w <CR> :!python % < %:r.in <CR>")
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
    nnoremap("<F5>", 
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
    nnoremap("<F7>",
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

-- keymaps shortcuts
Telescope_map()
-- Coc_map()
Ntree_map()

-- vim.api.nvim_create_autocmd
-- vim.api.nvim_command [[ autocmd BufRead,BufNewFile *.c c_map ]]
-- vim.api.nvim_command ([[ autocmd BufRead,BufNewFile *.cpp cpp_map ]])
-- Auto command in any type you want
vim.api.nvim_command "autocmd Filetype c lua C_map()"
vim.api.nvim_command "autocmd Filetype cpp lua Cpp_map()"
vim.api.nvim_command "autocmd Filetype py lua Python_map()"
vim.api.nvim_command "autocmd Filetype tex lua Latex_map()"

-- cpp_map()

-- Tagbar key maps
-- nmap("<F8>", ":TagbarToggle<CR>")
