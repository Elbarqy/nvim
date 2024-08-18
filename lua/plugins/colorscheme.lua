return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato", -- Change this to your preferred flavor: latte, frappe, macchiato, or mocha
      background = { -- :h background
        light = "auto",
        dark = "auto",
      },
      transparent_background = true, -- Set to true if you want a transparent background
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more integrations, see https://github.com/catppuccin/nvim#integrations
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
