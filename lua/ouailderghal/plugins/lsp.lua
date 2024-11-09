return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    { "williamboman/mason.nvim", config = true },
    { "j-hui/fidget.nvim", opts = {} },
    { "folke/neodev.nvim", opts = {} },
  },

  config = function()
    -- Create an autocommand group.
    -- @param group_name string: The name of the autocommand group.
    -- @return number: The ID of the created autocommand group.
    local function create_augroup(group_name)
      return vim.api.nvim_create_augroup(group_name, { clear = true })
    end

    local lsp_attach_group = create_augroup("LSPAttachGroup")
    vim.api.nvim_create_autocmd("LspAttach", {
      group = lsp_attach_group,
      callback = function(event)
        --- A utility function to create buffer-local key mappings?
        -- @param keys (string) The key combination to trigger the function.
        -- @param func (function) The function to execute.
        local lsp_map = function(keys, func)
          vim.keymap.set("n", keys, func, { buffer = event.buf })
        end

        -- Setting keybindings for LSP 
        local telescope_builtin = require("telescope.builtin")
        lsp_map("gd", telescope_builtin.lsp_definitions)
        lsp_map("gr", telescope_builtin.lsp_references)
        lsp_map("gI", telescope_builtin.lsp_implementations)
        lsp_map("<leader>D", telescope_builtin.lsp_type_definitions)
        lsp_map("<leader>ds", telescope_builtin.lsp_document_symbols)
        lsp_map("<leader>ws", telescope_builtin.lsp_dynamic_workspace_symbols)
        lsp_map("<leader>rn", vim.lsp.buf.rename)
        lsp_map("<leader>ca", vim.lsp.buf.code_action)
        lsp_map("K", vim.lsp.buf.hover)
        lsp_map("gD", vim.lsp.buf.declaration)


        -- If the editor supports highlighting, create the LSP highlight and
        -- LSP detach groups
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
          local lsp_highlight_group  = create_augroup("LSPHighlightGroup")
          vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
            buffer = event.buf,
            group = lsp_highlight_group,
            callback = vim.lsp.buf.document_highlight,
          })

          vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
            buffer = event.buf,
            group = lsp_highlight_group,
            callback = vim.lsp.buf.clear_references,
          })

          local lsp_detach_group = create_augroup("LSPDetachGroup")
          vim.api.nvim_create_autocmd("LspDetach", {
            group = lsp_detach_group,
            callback = function(event2)
              vim.lsp.buf.clear_references()
              vim.api.nvim_clear_autocmds(
                {
                  group = lsp_highlight_group,
                  buffer = event2.buf
                })
            end,
          })
        end
      end
    })

    --  Add capabilities with nvim cmp
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend(
      "force",
      capabilities,
      require("cmp_nvim_lsp").default_capabilities())

    -- List of LSP servers
    local servers = {
      lua_ls = { autostart = false },
      gopls = { autostart = false },
      pyright = { autostart = false },
      yamlls = { autostart = false },
      clangd = { autostart = false },
      -- tsserver = { autostart = false },
      html = { autostart = false, filetypes = { "html" } },
      ansiblels = { autostart = false },
      jsonls = { autostart = false },
      texlab = { autostart = false },
      bashls = { autostart = false },
      intelephense = {
        autostart = false,
        licenceKey = "~/intelephense/licence.txt",
      },
    }

    -- List of linters and other packages
    local other = {
      "stylua",
      "flake8",
    }

    -- Setup Mason
    require("mason").setup()
    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, other)
    require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend(
            "force",
            {},
            capabilities,
            server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end
}
