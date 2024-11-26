-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.ale_linters = {
  ["peg"] = { "pigeon" }, -- Add pigeon as a linter for .peg files
}
vim.g.ale_fixers = {
  ["peg"] = { "pigeon" }, -- Optional: You can add fixers here if available
}

-- Enable ALE diagnostics
vim.g.ale_enabled = 1

-- You can customize more ALE settings if needed
vim.g.ale_lint_on_enter = 1
vim.g.ale_sign_error = "✘"
vim.g.ale_sign_warning = "⚠"
