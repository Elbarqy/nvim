return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup({})
    end,
  },
  { "RobertPietraru/bloc.nvim", dependencies = {
    "jose-elias-alvarez/null-ls.nvim",
  } },
}
