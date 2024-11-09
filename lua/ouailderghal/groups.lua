-- Set indentation settings for the current buffer.
-- @param expandtab boolean
-- @param tabstop number
-- @param softtabstop number
-- @param shiftwidth number
local function set_indent(expandtab, tabstop, softtabstop, shiftwidth)
  vim.bo.expandtab = expandtab
  vim.bo.tabstop = tabstop
  vim.bo.softtabstop = softtabstop
  vim.bo.shiftwidth = shiftwidth
end

-- Create an autocommand group.
-- @param group_name string: The name of the autocommand group.
-- @return number: The ID of the created autocommand group.
local function create_augroup(group_name)
  return vim.api.nvim_create_augroup(group_name, { clear = true })
end

local indent_groups = {
  {
    name = "LuaGroup",
    pattern = "lua",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 2,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
  {
    name = "GoGroup",
    pattern = "go",
    file_types = { "FileType" },
    indent = {
      expand = false,
      tabstop = 4,
      softtabstop = 4,
      shiftwidth = 0
    }
  },
  {
    name = "CGroup",
    pattern = "c",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 4,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
  {
    name = "CPPGroup",
    pattern = "cpp",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 4,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
  {
    name = "PythonGroup",
    pattern = "python",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 4,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
  {
    name = "PHPGroup",
    pattern = "php",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 4,
      softtabstop = 4,
      shiftwidth = 4
    }
  },
  {
    name = "MakefileGroup",
    pattern = {
      "make",
      "Makefile",
      "*.Makefile",
      "makefile",
      "*.makefile"
    },
    file_types = { "FileType", "BufRead", "BufNewFile" },
    indent = {
      expand = false,
      tabstop = 2,
      softtabstop = 2,
      shiftwidth = 0
    }
  },
  {
    name = "DockerfileGroup",
    pattern = {
      "docker",
      "Dockerfile",
      "*.Dockerfile",
      "dockerfile",
      "*.dockerfile"
    },
    file_types = { "FileType", "BufRead", "BufNewFile" },
    indent = {
      expand = true,
      tabstop = 2,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
  {
    name = "JSONGroup",
    pattern = "json",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 2,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
  {
    name = "YAMLGroup",
    pattern = "yaml",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 2,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
  {
    name = "LaTeXGroup",
    pattern = "tex",
    file_types = { "FileType" },
    indent = {
      expand = true,
      tabstop = 2,
      softtabstop = 0,
      shiftwidth = 0
    }
  },
}

-- Create indent groups
for _, group in ipairs(indent_groups) do
  local augroup = create_augroup(group.name)
  for _, file_type in ipairs(group.file_types) do
    vim.api.nvim_create_autocmd({ file_type }, {
      group = augroup,
      pattern = group.pattern,
      callback = function()
        set_indent(
          group.indent.expand,
          group.indent.tabstop,
          group.indent.softtabstop,
          group.indent.shiftwidth)
      end
    })
  end
end

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

-- Define keybindigns in the compilation buffer
vim.api.nvim_create_autocmd("FileType", {
  pattern = "compilation",
  callback = function()
    vim.keymap.set("n", "R", ":Recompile<cr>", { buffer = 0 })
  end,
})
