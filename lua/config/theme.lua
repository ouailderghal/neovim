local gh = require('config.util').gh

-- [[ Tokyo Night ]]
vim.pack.add { gh 'folke/tokyonight.nvim' }
---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  },
}

-- [[ Gruvbox ]]
vim.pack.add { gh 'ellisonleao/gruvbox.nvim' }
---@diagnostic disable-next-line: missing-fields
require('gruvbox').setup {
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
}

-- [[ One Dark ]]
vim.pack.add { gh 'navarasu/onedark.nvim' }
require('onedark').setup {
  code_style = {
    comments = 'none',
  },
}

vim.cmd.colorscheme 'onedark'

-- [[ Toggle dark/light background ]]
local function toggle_background()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end

vim.keymap.set('n', '<F10>', toggle_background, { desc = 'Toggle dark/light background' })
vim.keymap.set('n', '<leader>tb', toggle_background, { desc = 'Toggle dark/light background' })
