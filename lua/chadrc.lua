---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "doomchad",

  -- Italic comments
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- Remove 'Toggle Theme' and 'Exit' buttons
M.ui = {
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
}

-- Enable NvDash on startup
M.nvdash = {
  load_on_startup = true,
}

return M
