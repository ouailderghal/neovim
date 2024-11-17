local globals = require("ouailderghal.globals")

return {
  {
    "mfussenegger/nvim-lint",

    cond = false,
    lazy = true,
    ft = globals.LINTER_FILE_TYPES,
    event = { "BufReadPre", "BufNewFile" },

    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        -- markdown = { "markdownlint" },
        python = { "flake8", "mypy" },
        dockerfile = { "hadolint" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint-group", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          if vim.opt_local.modifiable:get() then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
