-- BUG: Plugin requires lua >= 5.1, cannot build with lua 5.4.7
-- TODO: Lazy load the plugin on markdown filetype
return {
  "jghauser/papis.nvim",
  cond = false,
  lazy = false,

  dependencies = {
    "kkharji/sqlite.lua",
    "MunifTanjim/nui.nvim",
    "pysan3/pathlib.nvim",
    "nvim-neotest/nvim-nio",
  },

  config = function()
    require("papis").setup({
      enable_keymaps = true,
    })
  end,
}
