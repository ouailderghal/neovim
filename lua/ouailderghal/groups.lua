-- It disables line numbering and relative line numbering in terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.wo.number = false
    vim.wo.relativenumber = false
    vim.opt.cursorline = false
    vim.opt.cursorcolumn = false
  end,
})
