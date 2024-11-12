local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Toggles between focus and zen modes using the zen-mode plugin
-- @param mode (string) The mode to toggle ("focus" or "zen")
local function toggle_zen_mode(mode)
  local zen = require("zen-mode")
  zen.setup({
    window = {
      width = 80,
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

--- Search the current buffer using Telescope's fuzzy finder.
--- @return nil
local function telescope_search_current_buffer()
  require("telescope.builtin").current_buffer_fuzzy_find(
    require("telescope.themes").get_dropdown({
      winblend = 10,
      previewer = false,
    })
  )
end

--- Perform a live grep search within open buffers using Telescope.
--- @return nil
local function telescope_search_open_buffers()
  require("telescope.builtin").live_grep({
    grep_open_files = true,
    prompt_title = "Live Grep in Open Files",
  })
end

--- Find configuration files using Telescope.
--- @return nil
local function telescope_find_config_file()
  require("telescope.builtin").find_files({
    cwd = vim.fn.stdpath("config"),
  })
end

-- Stop highlight search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Toggle Zen mode
keymap.set("n", "<leader>zz", function()
  toggle_zen_mode("focus")
end)
keymap.set("n", "<leader>zZ", function()
  toggle_zen_mode("zen")
end)

-- Diagnostic keybindings
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<leader>e", vim.diagnostic.open_float)
keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- Create, close and switch between tabs
keymap.set("n", "<leader>te", ":tabedit<cr>", opts)
keymap.set("n", "<leader>td", ":tabclose<cr>", opts)
keymap.set("n", "<tab>", ":tabnext<cr>", opts)
keymap.set("n", "<s-tab>", ":tabprev<cr>", opts)

-- Buffers bindings
keymap.set("n", "<leader>h", ":bnext<cr>", opts)
keymap.set("n", "<leader>l", ":bprevious<cr>", opts)
keymap.set("n", "<leader>bd", ":bd<cr>")

-- Open explorer
keymap.set("n", "<leader>op", ":Explore<cr>", opts)

-- Move line or selected lined up acr down
keymap.set("n", "<C-j>", ":m .+1<cr>==", opts)
keymap.set("n", "<C-k>", ":m .-2<cr>==", opts)
keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", opts)
keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", opts)

-- Start and stop LSP server
keymap.set("n", "<F2>", ":LspStart<cr>", opts)
keymap.set("n", "<F3>", ":LspStop<cr>", opts)

-- Start and stop spell checking
keymap.set("n", "<leader>le", ":set spell spelllang=en_us<cr>", opts)
keymap.set("n", "<leader>lf", ":set spell spelllang=fr<cr>", opts)
keymap.set("n", "<leader>ll", ":set nospell<cr>", opts)

-- Terminal keybindings
keymap.set("n", "<leader>tt", ":split term://bash<cr>", opts)
keymap.set("n", "<leader>tv", ":vsplit term://bash<cr>", opts)
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Toggle relative line number
keymap.set("n", "<F12>", ":set relativenumber!<cr>", opts)

-- Refactoring bindings
keymap.set("x", "<leader>re", ":Refactor extract ")
keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")
keymap.set("x", "<leader>rv", ":Refactor extract_var ")
keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")
keymap.set("n", "<leader>rI", ":Refactor inline_func")
keymap.set("n", "<leader>rb", ":Refactor extract_block")
keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")

-- Telescope keybindings
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
vim.keymap.set("n", "<leader>pf", require("telescope.builtin").git_files)
vim.keymap.set("n", "<leader>pg", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<leader>pd", require("telescope.builtin").diagnostics)
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string)
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").resume)
vim.keymap.set("n", "<leader>s.", require("telescope.builtin").oldfiles)
vim.keymap.set("n", "<leader><leader>", require("telescope.builtin").buffers)
vim.keymap.set("n", "<leader>/", function() telescope_search_current_buffer() end)
vim.keymap.set("n", "<leader>s/", function() telescope_search_open_buffers() end)
vim.keymap.set("n", "<leader>sn", function() telescope_find_config_file() end)
