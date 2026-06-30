local code_filetypes = {
    "go", "c", "cpp", "java", "php", "python", "lua", "bash", "sh", "dockerfile", "json", "yaml", "make", "plantuml",
    "tikz", "dot", "javascript", "typescript", "rust", "haskell", "ocaml",
}

vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("StripTrailingWhitespace", { clear = true }),
    pattern = vim.tbl_map(function(ft) return "*." .. ft end, code_filetypes),
    callback = function()
        local view = vim.fn.winsaveview()
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.winrestview(view)
    end,
})
