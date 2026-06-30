return {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
        require("ufo").setup({
            open_fold_hl_timeout = 0,
            provider_selector = function(_, filetype, _)
                local map = {
                    yaml = { "indent" },
                    json = { "indent" },
                }
                return map[filetype] or { "treesitter", "indent" }
            end,
        })

        vim.keymap.set("n", "zR", require("ufo").openAllFolds)
        vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
    end,
}
