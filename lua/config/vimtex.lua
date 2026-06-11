local gh = require('config.util').gh
vim.pack.add { gh 'lervag/vimtex' }

-- Use zathura as the PDF viewer.
vim.g.vimtex_view_method = 'zathura'

-- Compile with latexmk into a dedicated output directory.
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_compiler_latexmk = {
  out_dir = 'out',
  aux_dir = 'out',
  callback = 1,
  continuous = 1,
  executable = 'latexmk',
  options = {
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
  },
}
