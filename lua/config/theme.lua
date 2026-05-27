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

vim.cmd.colorscheme 'tokyonight-night'
