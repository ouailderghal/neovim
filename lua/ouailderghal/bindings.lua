local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Toggles between focus and zen modes using the zen-mode plugin
-- @param mode (string) The mode to toggle ("focus" or "zen")
local function toggle_zen_mode(mode)
    local zen = require("zen-mode")
    zen.setup({
        window = {
            width = 80,
            options = {}
        }
    })

    vim.wo.wrap = false
    vim.wo.rnu = false

    if mode == "focus" then
        vim.wo.number = true
        zen.toggle()
    elseif mode == "zen" then
        vim.wo.number = false
        vim.opt.colorcolumn = "0"
        zen.toggle()
    else
        error("Invalid mode specified. Use 'focus' or 'zen'.")
    end
end

-- Diagnostic bindings
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<leader>e", vim.diagnostic.open_float)
keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- Exit terminal mode in the builtin terminal binding
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Zen mode
keymap.set("n", "<leader>zz", function() toggle_zen_mode("focus") end)
keymap.set("n", "<leader>zZ", function() toggle_zen_mode("zen") end)

vim.api.nvim_set_keymap('n', '<leader>le', ':set spell spelllang=en_us<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lf', ':set spell spelllang=fr<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ll', ':set nospell <CR>', opts)

-- F9 to toggle between relative and normal line numbers
vim.api.nvim_set_keymap('n', '<F9>', ':set relativenumber!<CR>', opts)

-- Tabs
keymap.set("n", "<leader>te", ":tabedit<Return>")
keymap.set("n", "<leader>td", ":tabclose<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
