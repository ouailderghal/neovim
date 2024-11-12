return {
  "kylechui/nvim-surround",
  cond = true,
  version = "*",
  event = "VeryLazy",

  config = function()
    require("nvim-surround").setup({})
  end,
}
