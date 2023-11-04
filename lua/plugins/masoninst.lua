return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "beautysh",
        "selene",
        "shfmt",
        "prettier",
        "hadolint",
        "debugpy",
        "pyright",
        "ruff-lsp",
        "black",
      },
    },
  },
}
