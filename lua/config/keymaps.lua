-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "n", "x" }, "à", "^", { desc = "First Word", silent = true })
-- map({ "n" }, "é", "/", { desc = "Search Buffwe", silent = true })
map({ "i" }, "jj", "<Esc>l", { desc = "Exit insert + go right", silent = true })
map({ "i" }, "jkj", "<Esc>lli", { desc = "Exit insert + go right & i", silent = true })
-- Option<Vec<String>>
-- floating terminal
local lazyterm = function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end
map("n", "<leader>ft", lazyterm, { desc = "Terminal (Root Dir)" })
map("n", "<leader>fT", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
map("n", "<c-7>", lazyterm, { desc = "Terminal (Root Dir)" })
map("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })

-- Terminal Mappings
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
map("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
map("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
map("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
map("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })
map("t", "<C-7>", "<cmd>close<cr>", { desc = "Hide Terminal" })
map("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })
