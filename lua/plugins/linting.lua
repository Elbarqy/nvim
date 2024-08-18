return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        -- Elixir
        nls.builtins.diagnostics.credo,
        -- TypeScript/JavaScript/React
        nls.builtins.diagnostics.eslint,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        update_in_insert = true, -- Update diagnostics in insert mode
        virtual_text = true, -- Show diagnostics as virtual text
        underline = true, -- Underline diagnostics
      },
    },
  },
}
