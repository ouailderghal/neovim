return {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
        require("ufo").setup({
            provider_selector = function(_, filetype, _)
                local map = {
                    yaml = { "indent" },
                    json = { "indent" },
                }
                return map[filetype] or { "treesitter", "indent" }
            end,
        })
    end,
}
