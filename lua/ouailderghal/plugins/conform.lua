return {
  "stevearc/conform.nvim",
  cond = true,
  lazy = true,
  cmd = { "ConformInfo" },

  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "n",
    },
  },

  opts = {
    notify_on_error = false,
    format_on_save = false,
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      php = { "phpcbf" },
      go = { "gofmt" },
      yaml = { "yamlfmt" },
    },
  },
}
