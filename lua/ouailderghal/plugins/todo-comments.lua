local globals = require("ouailderghal.globals")

return {
  "folke/todo-comments.nvim",
  cond = true,
  lazy = true,
  ft = globals.CODE_FILE_TYPES,
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {
      "[t",
      function()
        require("todo-comments").jump_prev()
      end,
      mode = "n",
    },
    {
      "]t",
      function()
        require("todo-comments").jump_next()
      end,
      mode = "n",
    },
  },
}
