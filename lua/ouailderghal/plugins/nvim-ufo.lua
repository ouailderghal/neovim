local globals = require("ouailderghal.globals")

return {
  "kevinhwang91/nvim-ufo",
  cond = true,
  lazy = true,
  ft = globals.TREESITTER_ENSURE_INSTALLED,

  dependencies = {
    "kevinhwang91/promise-async",
  },

  config = function()
    vim.o.foldcolumn = "0"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.keymap.set("n", "zR", require("ufo").openAllFolds)
    vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

    require("ufo").setup({
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    })
  end,
}
