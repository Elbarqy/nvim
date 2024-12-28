-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- delete a word backward
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- jumplist
-- keymap.set("n", "<C-m>", "<C-l>", opts)

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "s<left>", "<c-w>h")
keymap.set("n", "s<up>", "<c-w>k")
keymap.set("n", "s<down>", "<c-w>j")
keymap.set("n", "s<right>", "<c-w>l")

-- resize window
-- keymap.set("n", "<C-w>h", "<C-w><")
-- keymap.set("n", "<C-w>l", "<C-w>>")
-- keymap.set("n", "<C-w>k", "<C-w>+")
-- keymap.set("n", "<C-w>j", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Moving lines
keymap.set("i", "<A-k>", "<ESC>:m .-2<CR>==gi")
keymap.set("i", "<A-j>", "<ESC>:m .+1<CR>==gi")
--vnoremap <A-k> :m '<-2<CR>gv=gv

-- Plugin keymap
keymap.set("n", "<leader>z", ":Twilight<CR>")

-- Debugger
keymap.set("n", "<leader>dt", ":DapUiToggle<CR>", opts)
keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", opts)
keymap.set("n", "<leader>dc", ":DapContinue<CR>", opts)
keymap.set("n", "<leader>dr", ":lua require('dapui').open({rest:true})", opts)
-- REFACTOR
keymap.set("n", "<leader>r", ":lua vim.lsp.buf.rename()", opts)

-- ray-x go Plugin
keymap.set("n", "<leader>gi", ":GoFillStruct<CR>")
keymap.set("n", "<leader>g1", ":GoIfErr<CR>")
keymap.set("n", "<loader>g2", ":GoAddTag json<CR>")
keymap.set("n", "<loader>g3", ":GoRmTag json<CR>")

--
-- Create an augroup for Go file settings
vim.api.nvim_create_augroup("GoKeyMappings", { clear = true })

-- Set key mappings specifically for Go files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  group = "GoKeyMappings",
  callback = function()
    local opts = { noremap = true, silent = true }

    -- Set key mappings for Go files
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>cf", "<cmd>GoFmt<CR>", opts) -- Format
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>tt", "<cmd>GoTest<CR>", opts) -- Run tests
    -- Add any other Go-specific key mappings here
  end,
})
