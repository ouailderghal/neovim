local gh = require('config.util').gh

-- [[ snacks.nvim ]]
-- A collection of QoL plugins. Must be set up early.
-- See https://github.com/folke/snacks.nvim for the full list of available plugins.
vim.pack.add { gh 'folke/snacks.nvim' }
---@type snacks.Config
require('snacks').setup {
  -- Gracefully handle large files (disables heavy features)
  bigfile = { enabled = true },
  -- Indent guides and scope highlighting
  indent = { enabled = true},
  -- Better vim.ui.input (e.g. rename prompts)
  input = { enabled = true },
  -- Pretty vim.notify
  notifier = { enabled = true },
  -- Render the first file quickly before plugins finish loading
  quickfile = { enabled = true },
  -- Auto-highlight and navigate LSP word references
  words = { enabled = true },
  -- Lazygit integration (<leader>gg to open)
  lazygit = { enabled = true },
}

vim.keymap.set('n', '<leader>gg', function() require('snacks').lazygit() end, { desc = '[G]it: open lazygit' })

-- Automatically detect and set indentation
vim.pack.add { gh 'NMAC427/guess-indent.nvim' }
require('guess-indent').setup {}

-- Only install nvim-web-devicons if a Nerd Font is available
if vim.g.have_nerd_font then vim.pack.add { gh 'nvim-tree/nvim-web-devicons' } end

-- Adds git related signs to the gutter, as well as utilities for managing changes
-- See `:help gitsigns` to understand what each configuration key does.
vim.pack.add { gh 'lewis6991/gitsigns.nvim' }
require('gitsigns').setup {
  signs = {
    add = { text = '+' }, ---@diagnostic disable-line: missing-fields
    change = { text = '~' }, ---@diagnostic disable-line: missing-fields
    delete = { text = '_' }, ---@diagnostic disable-line: missing-fields
    topdelete = { text = '‾' }, ---@diagnostic disable-line: missing-fields
    changedelete = { text = '~' }, ---@diagnostic disable-line: missing-fields
  },
}

-- Useful plugin to show you pending keybinds.
vim.pack.add { gh 'folke/which-key.nvim' }
require('which-key').setup {
  delay = 0,
  icons = { mappings = vim.g.have_nerd_font },
  spec = {
    { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    { 'gr', group = 'LSP Actions', mode = { 'n' } },
  },
}

-- Theme: see lua/config/theme.lua
require 'config.theme'

-- Highlight todo, notes, etc in comments
vim.pack.add { gh 'folke/todo-comments.nvim' }
require('todo-comments').setup { signs = false }

-- [[ mini.nvim ]]
--  A collection of various small independent plugins/modules
--  Check out: https://github.com/nvim-mini/mini.nvim
vim.pack.add { gh 'nvim-mini/mini.nvim' }

-- Better Around/Inside textobjects
--  - va)  - [V]isually select [A]round [)]paren
--  - yiiq - [Y]ank [I]nside [I]+1 [Q]uote
--  - ci'  - [C]hange [I]nside [']quote
require('mini.ai').setup {
  -- NOTE: Avoid conflicts with the built-in incremental selection mappings on Neovim>=0.12
  mappings = {
    around_next = 'aa',
    inside_next = 'ii',
  },
  n_lines = 500,
}

-- Add/delete/replace surroundings (brackets, quotes, etc.)
--  - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
--  - sd'   - [S]urround [D]elete [']quotes
--  - sr)'  - [S]urround [R]eplace [)] [']
require('mini.surround').setup()

-- Simple and easy statusline.
local statusline = require 'mini.statusline'
statusline.setup { use_icons = vim.g.have_nerd_font }

---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function() return '%2l:%-2v' end
