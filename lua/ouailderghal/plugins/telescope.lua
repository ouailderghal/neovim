return {
	"nvim-telescope/telescope.nvim",

	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},

	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

    -- Setting keybindings for Telescope 
		local telescope_builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sh", telescope_builtin.help_tags)
		vim.keymap.set("n", "<leader>sk", telescope_builtin.keymaps)
		vim.keymap.set("n", "<leader>pf", telescope_builtin.git_files)
		vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files)
		vim.keymap.set("n", "<leader>ss", telescope_builtin.builtin)
		vim.keymap.set("n", "<leader>sw", telescope_builtin.grep_string)
		vim.keymap.set("n", "<leader>sg", telescope_builtin.live_grep)
		vim.keymap.set("n", "<leader>sd", telescope_builtin.diagnostics)
		vim.keymap.set("n", "<leader>sr", telescope_builtin.resume)
		vim.keymap.set("n", "<leader>s.", telescope_builtin.oldfiles)
		vim.keymap.set("n", "<leader><leader>", telescope_builtin.buffers)

		-- Binding to search in the current buffer
		vim.keymap.set("n", "<leader>/", function()
			telescope_builtin.current_buffer_fuzzy_find(
        require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
        }))
		end)

		-- Binding to search in open files
		vim.keymap.set("n", "<leader>s/", function()
			telescope_builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end)

		-- Binding to search Neovim configuration files
		vim.keymap.set("n", "<leader>sn", function()
			telescope_builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end)
	end
}
