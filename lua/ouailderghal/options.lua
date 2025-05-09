-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Global settings
vim.g.have_nerd_font = false
vim.g.editorconfig = false

-- General editor behavior
vim.opt.backup = false
vim.opt.title = true
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true

-- Search behavior
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.inccommand = "split"

-- UI settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.opt.scrolloff = 10
vim.opt.list = false
vim.opt.listchars = { trail = "·", tab = "» ", nbsp = "␣" }
vim.opt.guicursor = ""

-- Indentation and formatting
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.conceallevel = 2
vim.opt.colorcolumn = "80"
vim.opt.textwidth = 80
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.formatoptions:append("t")

-- Window behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Performance tweaks
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Netrw file explorer settings
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 3
