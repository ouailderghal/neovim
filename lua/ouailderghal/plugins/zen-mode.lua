-- Toggles between focus and zen modes using the zen-mode plugin
-- @param mode (string) The mode to toggle ("focus" or "zen")
local function toggle_zen_mode(mode)
  local zen = require("zen-mode")
  zen.setup({
    window = {
      width = 130,
      options = {},
    },
  })

  vim.wo.wrap = false
  vim.wo.rnu = false

  if mode == "focus" then
    vim.wo.number = true
    zen.toggle()
  elseif mode == "zen" then
    vim.wo.number = false
    vim.opt.colorcolumn = "0"
    zen.toggle()
  else
    error("Invalid mode specified. Use 'focus' or 'zen'.")
  end
end

return {
  "folke/zen-mode.nvim",
  cond = true,
  lazy = true,

  keys = {
    {
      "<leader>zz",
      function()
        toggle_zen_mode("focus")
      end,
      mode = "n",
    },
    {
      "<leader>zZ",
      function()
        toggle_zen_mode("zen")
      end,
      mode = "n",
    },
  },
}
