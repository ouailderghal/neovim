local opts = { noremap = true, silent = true }

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Open netrw in 25% split in tree view
map("n", "<leader>e", ":25Lex<CR>")

-- Terminal keybindings
map("n", "<leader>tt", ":split term://bash<cr>", opts)
map("n", "<leader>tv", ":vsplit term://bash<cr>", opts)
map("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Move line or selected lined up acr down
map("n", "<C-j>", ":m .+1<cr>==", opts)
map("n", "<C-k>", ":m .-2<cr>==", opts)
map("v", "<C-j>", ":m '>+1<cr>gv=gv", opts)
map("v", "<C-k>", ":m '<-2<cr>gv=gv", opts)

-- Stop highlight search
map("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Tab bindings 
map("n", "<leader>t", ":tabnew<CR>")
map("n", "<leader>x", ":tabclose<CR>")
map("n", "<leader>j", ":tabprevious<CR>")
map("n", "<leader>k", ":tabnext<CR>")

-- Easy split navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- Buffer navigation
map("n", "<Tab>", ":bnext <CR>")
map("n", "<S-Tab>", ":bprevious <CR>")
map("n", "<leader>d", ":bd! <CR>")

-- Reload config
map("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>")

