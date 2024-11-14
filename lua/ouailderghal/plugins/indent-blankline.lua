local globals = require("ouailderghal.globals")

return {
  "lukas-reineke/indent-blankline.nvim",

  cond = true,
  lazy = true,
  ft = globals.TREESITTER_ENSURE_INSTALLED,
  main = "ibl",
  opts = {},
}
