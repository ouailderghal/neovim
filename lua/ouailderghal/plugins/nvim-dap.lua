local globals = require("ouailderghal.globals")

return {
  "mfussenegger/nvim-dap",
  lazy = true,
  ft = globals.DEBUG_LAZY_FILE_TYPES,

  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "williamboman/mason.nvim",
    "jay-babu/mason-nvim-dap.nvim",

    "leoluz/nvim-dap-go",
    "mfussenegger/nvim-dap-python",
  },

  keys = {
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      mode = "n",
    },
    {
      "<F1>",
      function()
        require("dap").step_into()
      end,
      mode = "n",
    },
    {
      "<F2>",
      function()
        require("dap").step_over()
      end,
      mode = "n",
    },
    {
      "<F3>",
      function()
        require("dap").step_out()
      end,
      mode = "n",
    },
    {
      "<leader>b",
      mode = "n",
      function()
        require("dap").toggle_breakpoint()
      end,
      mode = "n",
    },
    {
      "<leader>B",
      function()
        require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end,
      mode = "n",
    },
    {
      "<F7>",
      function()
        require("dapui").toggle()
      end,
      mode = "n",
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
        "python",
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
