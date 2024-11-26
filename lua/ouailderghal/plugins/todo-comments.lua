local globals = require("ouailderghal.globals")

return {
  "folke/todo-comments.nvim",
  cond = true,
  lazy = true,
  ft = globals.CODE_FILE_TYPES,
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    keywords = {
      FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      IDEA = { icon = "", color = "hint", alt = {} },
    },
  },
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
