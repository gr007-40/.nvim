-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

-- local function del(mode, keymap)
--   vim.api.nvim_del_keymap(mode, keymap)
-- end

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

-- paste over selection
-- TODO: breaks yanky -> open yank history
map("x", "<leader>p", '"_dP')

-- delete without changing the clipboard
map("x", "<leader>d", '"_d')

-- Delete contents of the whole file without changing the clipboard
map("n", "<C-d>", ':%"_d<CR>')

-- some ought to be helpful shortcuts
map("n", "Q", "<nop>")

-- Yank the whole file to the clipboard
map("n", "<C-y>", ":%y<CR>")
