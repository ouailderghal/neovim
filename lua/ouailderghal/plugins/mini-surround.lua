return {
  "echasnovski/mini.surround",
  version = "*",
  event = "VeryLazy",

  opts = {
    mappings = {
      add            = "sa", -- sa{motion}{char}  e.g. saiw"
      delete         = "sd", -- sd{char}          e.g. sd"
      replace        = "sr", -- sr{old}{new}      e.g. sr"'
      find           = "sf", -- find surrounding to the right
      find_left      = "sF", -- find surrounding to the left
      highlight      = "sh", -- highlight surrounding
      update_n_lines = "sn", -- update search range
    },
    n_lines = 20,
  },
}
