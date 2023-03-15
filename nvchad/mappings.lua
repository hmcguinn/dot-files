---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = {":GitBlameToggle <CR>"},  -- can : instead of <cmd>
  },
}

-- more keybinds!

return M
