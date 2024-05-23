-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map({ "n", "x" }, "à", "^", { desc = "First Word", silent = true })
-- map({ "n" }, "é", "/", { desc = "Search Buffwe", silent = true })
map({ "i" }, "jjk", "<Esc>l", { desc = "First Word", silent = true })
