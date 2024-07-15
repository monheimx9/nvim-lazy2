require("which-key").add({
  { "<leader>i", group = "Duck [I]nterface", icon = "🦆" },
  { "<leader>i_", hidden = true },
})
return {
  {
    "tamton-aquib/duck.nvim",
    config = function()
      vim.keymap.set("n", "<leader>id", function()
        require("duck").hatch("🦆", 10)
      end, { desc = "Hatch duck" })
      vim.keymap.set("n", "<leader>if", function()
        require("duck").hatch("🦆", 40)
      end, { desc = "Hatch very fast duck" })
      vim.keymap.set("n", "<leader>ik", function()
        require("duck").cook()
      end, { desc = "Cook duck" })
    end,
  },
}
