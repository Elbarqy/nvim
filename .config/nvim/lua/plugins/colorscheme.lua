return {
  -- Add Nord.nvim
  {
    "nyngwang/nvimgelion",
    lazy = false, -- Load it immediately
    priority = 1000, -- Ensure it's loaded before other plugins
    config = function() end,
  },
}
