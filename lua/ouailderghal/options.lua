vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = false
vim.g.editorconfig = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = "split"
vim.opt.hlsearch = true
vim.opt.scrolloff = 10
vim.opt.list = false
vim.opt.listchars = { trail = "·", tab = "» ", nbsp = "␣" }
vim.opt.guicursor = ""
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.conceallevel = 2

-- Line wrap & break
vim.opt.colorcolumn = "120"
vim.opt.textwidth = 120
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.formatoptions:append("t")
