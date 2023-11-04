return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = "mason.nvim",
  opts = {
    automatic_installation = true,
    handlers = {},
    ensure_installed = { "python", "rust" },
  },
}
