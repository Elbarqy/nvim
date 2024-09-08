return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({})
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
  },
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup()
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    -- keep in mind, it might break everything
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "mfussenegger/nvim-dap", -- (optional) only if you use `gopher.dap`
    },
    -- (optional) will update plugin's deps on every update
    build = function()
      vim.cmd.GoInstallDeps()
    end,
    opts = {},
  },
}
-- gophe.nvim for boilerplat code
-- local autogroup = vim.api.nvim_create_augroup("lspFormatting", {})
--
-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     opts = function(_, opts)
--       vim.list_extend(opts.ensure_installed, {
--         "go",
--         "gomod",
--         "gowork",
--       })
--     end,
--   },
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         gopls = {
--           settings = {
--             gopls = {
--               gofumpt = true,
--               codelenses = {
--                 gc_details = false,
--                 generate = true,
--                 regenerate_cgo = true,
--                 run_govulncheck = true,
--                 test = true,
--                 tidy = true,
--                 upgrade_dependency = true,
--                 vendor = true,
--               },
--               hints = {
--                 assignVariableTypes = true,
--                 compositeLiteralFields = true,
--                 compositeLiteralTypes = true,
--                 constantValues = true,
--                 functionTypeParameters = true,
--                 parameterNames = true,
--                 rangeVariableTypes = true,
--               },
--               analyses = {
--                 fieldalignment = true,
--                 nilness = true,
--                 unusedparams = true,
--                 unusedwrite = true,
--                 useany = true,
--               },
--               usePlaceholders = true,
--               completeUnimported = true,
--               staticcheck = true,
--               directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
--               semanticTokens = true,
--             },
--           },
--         },
--       },
--       setup = {
--         gopls = function(_, opts)
--           -- workaround for gopls not supporting semanticTokensProvider
--           -- https://github.com/golang/go/issues/54532#issuecomment-1464982242
--           LazyVim.lsp.on_attach(function(client, _)
--             if not client.server_capabilities.semanticTokensProvider then
--               local semantic = client.config.capabilities.textDocument.semanticTokens
--               client.server_capabilities.semanticTokensProvider = {
--                 full = true,
--                 legend = {
--                   tokenTypes = semantic.tokenTypes,
--                   tokenModifiers = semantic.tokenModifiers,
--                 },
--                 range = true,
--               }
--             end
--           end, "gopls")
--           -- end workaround
--         end,
--       },
--     },
--   },
--   {
--     "mfussenegger/nvim-dap",
--   },
--   {
--     "jose-elias-alvarez/null-ls.nvim",
--     opts = function(_, opts)
--       local nls = require("null-ls")
--       vim.list_extend(opts.sources, {
--         nls.builtins.formatting.gofumpt,
--         nls.builtins.diagnostics.golangci_lint,
--         nls.builtins.formatting.golines,
--       })
--     end,
--   },
--   {
--     "mason.nvim",
--     opts = {
--       ensure_installed = { "delve" },
--     },
--   },
--   {
--     "nvim-neotest/neotest",
--     dependencies = {
--       "nvim-neotest/neotest-go",
--     },
--     --  opts = function(_, opts)
--     --    opts.adapters = vim.list_extend(opts.adapters or {}, {
--     --      require("neotest-go")({
--     --        args = { "-tags=integration" },
--     --      }),
--     --    })
--     --  end,
--   },
-- }
