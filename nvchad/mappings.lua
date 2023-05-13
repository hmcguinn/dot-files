---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = {":GitBlameToggle <CR>"},  -- can : instead of <cmd>
    ["<leader>pp"] = {":PrettierAsync<CR>"},
    ["<leader>cp"] = {":Copilot panel<CR>"},
    ["gh"] = { "0" },
    -- ["x"] = { "V" },
    -- ["d"] = { "V" },
  },
}

-- more keybinds!

return M
