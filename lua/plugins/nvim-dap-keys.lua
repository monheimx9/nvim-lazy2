return {
  "mfussenegger/nvim-dap",
  keys = {
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      desc = "[D]ebug Continue",
    },
    {
      "<F6>",
      function()
        require("dap").step_into()
      end,
      desc = "[D]ebug Step Into",
    },
    {
      "<F7>",
      function()
        require("dap").step_out()
      end,
      desc = "[D]ebug Step Out",
    },
    {
      "<F8>",
      function()
        require("dap").step_over()
      end,
      desc = "[D]ebug Step Over",
    },
  },
}
