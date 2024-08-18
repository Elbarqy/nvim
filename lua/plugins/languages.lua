return {
  {
    "elixir-editors/vim-elixir",
    ft = { "elixir", "eelixir", "heex" },
  },
  {
    "jfpedroza/neotest-elixir",
  },
  -- TypeScript
  {
    "jose-elias-alvarez/typescript.nvim",
    ft = { "typescript", "typescriptreact" },
  },

  -- Dart and Flutter
  {
    "dart-lang/dart-vim-plugin",
    ft = { "dart" },
  },
  {
    "akinsho/flutter-tools.nvim",
    ft = { "dart" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = true,
  },

  -- React (JSX/TSX)
  {
    "maxmellon/vim-jsx-pretty",
    ft = { "javascriptreact", "typescriptreact" },
  },

  -- LSP configurations
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Elixir
        elixirls = {},
        -- TypeScript
        tsserver = {},
        -- Dart
        dartls = {},
      },
    },
  },
}
