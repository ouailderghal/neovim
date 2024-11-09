return {
  "ej-shafran/compile-mode.nvim",
  tag = "v5.3.1",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "m00qek/baleia.nvim", tag = "v1.3.0" },
  },
  config = function()
    vim.g.compile_mode = {
      baleia_setup = true,
    }
  end,
  keys = {
    {
      "<leader>pc",
      "<cmd>Compile<cr>"
    }
  },
}
