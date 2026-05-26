local gh = require('config.util').gh

---@type (string|vim.pack.Spec)[]
local telescope_plugins = {
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-telescope/telescope.nvim',
  gh 'nvim-telescope/telescope-ui-select.nvim',
}
if vim.fn.executable 'make' == 1 then table.insert(telescope_plugins, gh 'nvim-telescope/telescope-fzf-native.nvim') end

-- NOTE: You can install multiple plugins at once
vim.pack.add(telescope_plugins)

-- Defer setup until telescope is actually available
vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function()
    -- See `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      defaults = require('telescope.themes').get_ivy {},
      extensions = {
        ['ui-select'] = { require('telescope.themes').get_ivy() },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'ui-select')
    pcall(require('telescope').load_extension, 'fzf')
  end,
})

-- See `:help telescope.builtin`
local builtin = require 'telescope.builtin'
local themes = require 'telescope.themes'

local function ivy(opts)
  return themes.get_ivy(vim.tbl_deep_extend('force', {
    winblend = 10,
  }, opts or {}))
end

vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', function() builtin.keymaps(ivy()) end, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', function() builtin.find_files(ivy()) end, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>ss', function() builtin.builtin(ivy()) end, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set({ 'n', 'v' }, '<leader>sw', function() builtin.grep_string(ivy()) end, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', function() builtin.live_grep(ivy()) end, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', function() builtin.diagnostics(ivy()) end, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', function() builtin.resume(ivy()) end, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', function() builtin.oldfiles(ivy()) end, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader>sc', function() builtin.commands(ivy()) end, { desc = '[S]earch [C]ommands' })
vim.keymap.set('n', '<leader><leader>', function() builtin.buffers(ivy()) end, { desc = '[ ] Find existing buffers' })

-- Add Telescope-based LSP pickers when an LSP attaches to a buffer.
-- If you later switch picker plugins, this is where to update these mappings.
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
  callback = function(event)
    local buf = event.buf

    -- Find references for the word under your cursor.
    vim.keymap.set('n', 'grr', function() builtin.lsp_references(ivy()) end, { buffer = buf, desc = '[G]oto [R]eferences' })

    -- Jump to the implementation of the word under your cursor.
    vim.keymap.set('n', 'gri', function() builtin.lsp_implementations(ivy()) end, { buffer = buf, desc = '[G]oto [I]mplementation' })

    -- Jump to the definition of the word under your cursor.
    -- To jump back, press <C-t>.
    vim.keymap.set('n', 'grd', function() builtin.lsp_definitions(ivy()) end, { buffer = buf, desc = '[G]oto [D]efinition' })

    -- Fuzzy find all the symbols in your current document.
    vim.keymap.set('n', 'gO', function() builtin.lsp_document_symbols(ivy()) end, { buffer = buf, desc = 'Open Document Symbols' })

    -- Fuzzy find all the symbols in your current workspace.
    vim.keymap.set('n', 'gW', function() builtin.lsp_dynamic_workspace_symbols(ivy()) end, { buffer = buf, desc = 'Open Workspace Symbols' })

    -- Jump to the type of the word under your cursor.
    vim.keymap.set('n', 'grt', function() builtin.lsp_type_definitions(ivy()) end, { buffer = buf, desc = '[G]oto [T]ype Definition' })
  end,
})

-- Fuzzily search in current buffer
vim.keymap.set('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(ivy { previewer = false })
end, { desc = '[/] Fuzzily search in current buffer' })

-- See `:help telescope.builtin.live_grep()` for information about particular keys
vim.keymap.set(
  'n',
  '<leader>s/',
  function()
    builtin.live_grep {
      grep_open_files = true,
      prompt_title = 'Live Grep in Open Files',
    }
  end,
  { desc = '[S]earch [/] in Open Files' }
)

-- Shortcut for searching your Neovim configuration files
vim.keymap.set('n', '<leader>sn', function() builtin.find_files { cwd = vim.fn.stdpath 'config' } end, { desc = '[S]earch [N]eovim files' })
