return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  keys = {
    -- { "<leader>ct", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
    { "<leader>ct", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
    {
      "<leader>cu",
      "<cmd>CodeSnapSaveHighlight<cr>",
      mode = "x",
      desc = "Save selected code snapshot with Highlight in ~/Pictures",
    },
  },
  opts = {
    save_path = "~/Pictures",
    has_breadcrumbs = true,
    bg_theme = "dusk",
    has_line_number = true,
    watermark = "yeet the mouse",
    show_workspace = true,
  },
}
