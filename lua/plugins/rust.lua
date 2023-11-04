return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Ensure mason installs the server
        rust_analyzer = {
          keys = {
            { "<leader>rK", "<cmd>RustHoverActions<cr>", desc = "Hover Actions (Rust)" },
            { "<leader>rR", "<cmd>RustCodeAction<cr>", desc = "Code Action (Rust)" },
            { "<leader>rr", "<cmd>RustDebuggables<cr>", desc = "Run Debuggables (Rust)" },
          },
        },
      },
    },
  },
}
