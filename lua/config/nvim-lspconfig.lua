return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {},
        html = { filetype = { "html", "twig", "hbs", "php" } },
      },
    },
  },
}
