return {
	"stevearc/conform.nvim",
	cond = false,

	lazy = false,
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
		},
	},
	opts = {
		notify_on_error = false,

		format_on_save = function(bufnr)
			local disable_filetypes = { c = true, cpp = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,

		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
		},
	},
}

-- vim: ts=2 sts=2 sw=2 et
