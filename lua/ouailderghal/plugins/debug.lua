local globals = require("ouailderghal.globals")

return {
  "mfussenegger/nvim-dap",
  lazy = true,
  ft = globals.DAP_LAZY_FILE_TYPES,

  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "williamboman/mason.nvim",
    "jay-babu/mason-nvim-dap.nvim",
    "leoluz/nvim-dap-go",
  },

  keys = {
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
    },
    {
      "<F1>",
      function()
        require("dap").step_into()
      end,
    },
    {
      "<F2>",
      function()
        require("dap").step_over()
      end,
    },
    {
      "<F3>",
      function()
        require("dap").step_out()
      end,
    },
    {
      "<leader>b",
      function()
        require("dap").toggle_breakpoint()
      end,
    },
    {
      "<leader>B",
      function()
        require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end,
    },
    {
      "<F7>",
      function()
        require("dapui").toggle()
      end,
    },
  },

  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("mason-nvim-dap").setup({
      automatic_installation = true,
      handlers = {},

      ensure_installed = {
        "delve",
      },
    })

    dapui.setup({
      icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
      controls = {
        icons = {
          pause = "⏸",
          play = "▶",
          step_into = "⏎",
          step_over = "⏭",
          step_out = "⏮",
          step_back = "b",
          run_last = "▶▶",
          terminate = "⏹",
          disconnect = "⏏",
        },
      },
    })

    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close
  end,
}
