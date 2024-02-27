-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Move Lines
map("n", "<C-A-j>", "<cmd>m .+1<cr>==")
map("n", "<C-A-k>", "<cmd>m .-2<cr>==")
map("i", "<C-A-j>", "<esc><cmd>m .+1<cr>==gi")
map("i", "<C-A-k>", "<esc><cmd>m .-2<cr>==gi")
map("v", "J", ":m '>+1<cr>gv=gv")
map("v", "K", ":m '<-2<cr>gv=gv")

-- delete without changing the clipboard
map("x", "<leader>d", '"_d')
-- Delete contents of the whole file without changing the clipboard
map("n", "<C-d>", ':%"_d<CR>')
-- some ought to be helpful shortcuts
map("n", "Q", "<nop>")
map("n", "<C-q>", ":wqa<CR>")
map("n", "<C-Q>", ":qa!<CR>")
-- Yank the whole file to the clipboard
map("n", "<C-y>", ":%y<CR>")
