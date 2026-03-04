return { 
  "mawkler/onedark.nvim", 
  priority = 1000 , 
  config = function()
  require("onedark").setup({
    function_style = "italic",
    sidebars = {"qf", "vista_kind", "terminal", "packer"},
    colors = {hint = "orange0", error = "#ff0000"},

    overrides = function(c)
      return {
        htmlTag = {fg = c.red0, bg = "#282c34", sp = c.hint, style = "underline"},
        DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
        TSField = {},
      }
    end
  })


  vim.cmd("colorscheme onedark")
  end, 
}
