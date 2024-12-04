-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
--
-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix canceallevel for json files
vim.api.nvim_create_autocmd("fileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.cancellevel = 0
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.go", "*.lua" },
  callback = function()
    --local fileName = vim.api.nvim_buf_get_name(0)
    --vim.cmd(":!yamlfmt " .. fileName)
    vim.lsp.buf.format()
  end,
})
