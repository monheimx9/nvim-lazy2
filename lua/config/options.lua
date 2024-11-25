-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.clipboard = "unnamedplus"
-- Speed up Rust CMP / LSP
vim.lsp.protocol.make_client_capabilities().workspace.didChangeWatchedFiles.dynamicRegistration = false
vim.o.spell = true
vim.o.spelllang = "fr,en"
