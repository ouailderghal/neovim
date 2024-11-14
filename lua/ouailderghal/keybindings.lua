local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local telescope = require("telescope.builtin")

--- Search the current buffer using Telescope's fuzzy finder.
--- @return nil
local function telescope_search_current_buffer()
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end

--- Perform a live grep search within open buffers using Telescope.
--- @return nil
local function telescope_grep_open_buffers()
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

--- Find hidden files using Telescope.
--- @return nil
local function telescope_find_hidden_files()
  require("telescope.builtin").find_files({ hidden = true })
end

--- Find hidden Git files using Telescope.
--- @return nil
local function telescope_find_hidden_git_files()
  require("telescope.builtin").git_files({ hidden = true })
end

-- Stop highlight search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

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
keymap.set("n", "<leader>e", ":Explore<cr>", opts)

-- Move line or selected lined up acr down
keymap.set("n", "<C-j>", ":m .+1<cr>==", opts)
keymap.set("n", "<C-k>", ":m .-2<cr>==", opts)
keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", opts)
keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", opts)

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

-- Fugitive keybindings
keymap.set("n", "<leader>gg", "<cmd>G<cr>")
keymap.set("n", "<leader>gp", "<cmd>G push<cr>")
keymap.set("n", "<leader>gl", "<cmd>Gclog<cr>")
keymap.set("n", "<leader>gb", "<cmd>!gh browse<cr>")

-- Telescope keybindings
keymap.set("n", "<leader>ff", telescope.find_files)
keymap.set("n", "<leader>fh", telescope_find_hidden_files)
keymap.set("n", "<leader>fn", telescope_find_config_file)
keymap.set("n", "<leader>pf", telescope.git_files)
keymap.set("n", "<leader>ph", telescope_find_hidden_git_files)
keymap.set("n", "<leader>pg", telescope.live_grep)
keymap.set("n", "<leader>pd", telescope.diagnostics)
keymap.set("n", "<leader>sw", telescope.grep_string)
keymap.set("n", "<leader>sr", telescope.resume)
keymap.set("n", "<leader>s.", telescope.oldfiles)
keymap.set("n", "<leader><leader>", telescope.buffers)
keymap.set("n", "<leader>/", telescope_search_current_buffer)
keymap.set("n", "<leader>s/", telescope_grep_open_buffers)

-- Obsidian keybindings
keymap.set("n", "<leader>on", ":ObsidianNew<cr>", opts)
keymap.set("n", "<leader>of", ":ObsidianQuickSwitch<cr>", opts)
keymap.set("n", "<leader>os", ":ObsidianSearch<cr>", opts)
keymap.set("n", "<leader>ow", ":ObsidianWorkspace<cr>", opts)
keymap.set("n", "<leader>or", ":ObsidianRename<cr>", opts)
keymap.set("n", "<leader>ot", ":ObsidianTOC<cr>", opts)

keymap.set("n", "<C-space>", ":ObsidianToggleCheckbox<cr>", opts)

keymap.set("n", "<leader>oit", ":ObsidianTemplate<cr>", opts)
