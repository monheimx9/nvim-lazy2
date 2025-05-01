local function get_size()
  -- Get terminal size in cells
  local width_cells = vim.api.nvim_get_option("columns")
  local height_cells = vim.api.nvim_get_option("lines")

  -- Default cell size in pixels (from snacks.image :checkhealth)
  local cell_width = 10
  local cell_height = 24

  -- Optional: Query terminal for cell size (works in some terminals like Kitty)
  local function query_cell_size()
    local handle = io.popen("echo -e '\033[18t' > /dev/tty; cat /dev/tty", "r")
    if handle then
      local response = handle:read("*a")
      handle:close()
      local h, w = response:match("\033%[8;(%d+);(%d+)t")
      if h and w then
        return tonumber(w) / width_cells, tonumber(h) / height_cells
      end
    end
    return cell_width, cell_height
  end

  cell_width, cell_height = query_cell_size()

  -- Estimate screen size in pixels
  local screen_width = math.floor(width_cells * cell_width)
  local screen_height = math.floor(height_cells * cell_height)

  -- Map screen size to nvim-dap-ui layout sizes (mimic original csize/lsize logic)
  local function csize(width, height)
    -- Approximate resolution to match original logic
    if width <= 1920 and height <= 900 then
      return 76 -- Original value for 1920x1080
    elseif width <= 2560 and height <= 1300 then
      return 120 -- Original value for 2560x1440
    else
      return 100 -- Fallback for other sizes
    end
  end

  local function lsize(width, height)
    if width <= 1920 and height <= 900 then
      return 21 -- Original value for 1920x1080
    elseif width <= 2560 and height <= 1300 then
      return 28 -- Original value for 2560x1440
    else
      return 25 -- Fallback for other sizes
    end
  end

  -- Default sizes (same as original fallback)
  local screen_size = { 50, 15 }

  -- Set sizes based on estimated screen resolution
  screen_size[1] = csize(screen_width, screen_height) -- Left panel size
  screen_size[2] = lsize(screen_width, screen_height) -- Bottom panel size

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
        size = sz[1],
      },
      {
        elements = {
          {
            id = "console",
            size = 1.0,
          },
        },
        position = "bottom",
        size = sz[2],
      },
    },
  },
}
