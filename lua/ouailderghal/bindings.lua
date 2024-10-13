-- Diagnostic bindings
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- Exit terminal mode in the builtin terminal binding
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Faster split navigation bindings
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")

-- Zen mode
vim.keymap.set("n", "<leader>zz", function()
	require("zen-mode").setup({
		window = {
			width = 90,
			options = {},
		},
	})
	require("zen-mode").toggle()
	vim.wo.wrap = false
	vim.wo.number = true
	vim.wo.rnu = false
end)

vim.keymap.set("n", "<leader>zZ", function()
	require("zen-mode").setup({
		window = {
			width = 80,
			options = {},
		},
	})
	require("zen-mode").toggle()
	vim.wo.wrap = false
	vim.wo.number = false
	vim.wo.rnu = false
	vim.opt.colorcolumn = "0"
end)

vim.api.nvim_set_keymap('n', '<leader>le', ':set spell spelllang=en_us<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lf', ':set spell spelllang=fr<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ll', ':set nospell <CR>', { noremap = true, silent = true })

-- F9 to toggle between relative and normal line numbers
vim.api.nvim_set_keymap('n', '<F9>', ':set relativenumber!<CR>', { noremap = true, silent = true })
