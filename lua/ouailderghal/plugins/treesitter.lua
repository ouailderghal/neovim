-- Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
-- Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
-- Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		auto_install = false,
		auto_sync = false,
		additional_vim_regex_highlighting = true,
		ensure_installed = {
			"lua",
			"luadoc",
			"vim",
			"vimdoc",
			"diff",
			"go",
			"c",
			"cpp",
			"python",
			"terraform",
			"bash",
			"markdown",
			"javascript",
			"typescript",
			"latex",
			"php",
			"ocaml",
			"dockerfile",
			"java",
			"json",
			"yaml",
		},

		highlight = { enable = true },
		indent = { enable = false },
		textobjects = { enable = true },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "gnn",
				node_incremental = "grn",
				scope_incremental = "grc",
				node_decremental = "grm",
			},
		},
	},

	config = function(_, opts)
		require("nvim-treesitter.install").prefer_git = true
		require("nvim-treesitter.configs").setup(opts)
	end,
}
