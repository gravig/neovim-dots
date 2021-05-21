local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- cycle next/previous tab
-- map("n", "A-Right", [[<Cmd> BufferLineCyclePrev <CR>]], opt)
-- map("n", "A-Left", [[<Cmd> BufferLineCycleNext <CR>]], opt)

-- copy any selected text with pressing y
-- map("", "<leader>c", '"+y')

-- OPEN TERMINALS --
-- map("n", "<C-l>", [[<Cmd>vnew term://bash <CR>]], opt) -- open term over right
-- map("n", "<C-x>", [[<Cmd> split term://bash | resize 10 <CR>]], opt) -- open term bottom

-- COPY EVERYTHING --
-- map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

-- TOGGLE NTREE --
map("n", "<C-b>", [[<Cmd>NvimTreeToggle<CR>]], opt)
