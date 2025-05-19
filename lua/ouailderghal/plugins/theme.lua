return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup {
      style = "warmer"
    }
    require("onedark").load()
  end
}
