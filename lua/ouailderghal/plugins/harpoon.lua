local globals = require("ouailderghal.globals")

return {
  "ThePrimeagen/harpoon",
  cond = true,
  lazy = true,
  ft = globals.REFACTOR_LAZY_FILE_TYPES,

  keys = {
    {
      "<leader>e",
      function()
        require("harpoon.mark").add_file()
      end,
      mode = "n",
    },
    {
      "<C-e>",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      mode = "n",
    },
    {
      "<leader>1",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      mode = "n",
    },
    {
      "<leader>2",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      mode = "n",
    },
    {
      "<leader>3",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      mode = "n",
    },
    {
      "<leader>4",
      function()
        require("harpoon.ui").nav_file(4)
      end,
      mode = "n",
    },
  },
}
