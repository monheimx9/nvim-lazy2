local function get_size()
  local pipe = io.popen("xrandr | grep -oP '(?<=connected |primary )[x\\d]+'", "r")
  local resolution = {}
  local screen_size = {}
  if pipe ~= nil then
    local i = 0
    for line in pipe:lines() do
      resolution[i] = line
      i = i + 1
    end
    pipe:close()
  end
  local function csize(r)
    if r == "1920x1080" then
      return 76
    elseif r == "2560x1440" then
      return 120
    end
  end
  local function lsize(r)
    if r == "1920x1080" then
      return 21
    elseif r == "2560x1440" then
      return 28
    end
  end
  screen_size[0] = 50
  screen_size[1] = 15
  if resolution ~= nil then
    screen_size[0] = csize(resolution[0])
    screen_size[1] = lsize(resolution[0])
  end
  return screen_size
end

local sz = get_size()

return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  opts = {
    layouts = {
      {
        elements = {
          {
            id = "scopes",
            size = 0.55,
          },
          {
            id = "repl",
            size = 0.15,
          },
          {
            id = "stacks",
            size = 0.15,
          },
          -- {
          --   id = "watches",
          --   size = 0.15,
          -- },
          {
            id = "breakpoints",
            size = 0.15,
          },
        },
        position = "left",
        size = sz[0],
      },
      {
        elements = {
          {
            id = "console",
            size = 1.0,
          },
        },
        position = "bottom",
        size = sz[1],
      },
    },
  },
}
