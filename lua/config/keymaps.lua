-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local newmap = Util.safe_keymap_set
-- newmap("n", "<leader>rr", "<cmd>RustDebuggables<cr>", { desc = "[R]ust Debug Start" })
