return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            out_dir = "out",
            options = {
                "-pdf",
                "-verbose",
                "-file-line-error",
                "-synctex=1",
                "-interaction=nonstopmode",
            },
        }
        vim.g.vimtex_mappings_enabled = true
        vim.g.vimtex_quickfix_mode = 2
    end,
}
