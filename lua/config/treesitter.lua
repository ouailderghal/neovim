-- [[ Configure Treesitter ]]
--  Neovim now has built-in treesitter support (nvim-treesitter is archived)
--  Parsers are downloaded and managed by `:TSUpdate` or `:TSInstall`
--  See `:help treesitter`

-- Enable treesitter for supported filetypes
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    local buf = args.buf
    local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
    if not lang then return end

    -- Try to enable treesitter highlighting for this buffer
    local ok = pcall(vim.treesitter.start, buf, lang)
    if not ok then return end

    -- Enable treesitter-based indentation if available
    if vim.treesitter.query.get(lang, 'indents') then
      vim.bo[buf].indentexpr = "v:lua.require'vim.treesitter'.indentexpr()"
    end
  end,
})
