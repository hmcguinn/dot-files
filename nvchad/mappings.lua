---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = {":GitBlameToggle <CR>"},  -- can : instead of <cmd>
    ["<leader>pp"] = {":PrettierAsync<CR>"},
    ["<leader>cp"] = {":Copilot panel<CR>"},
    ["<leader>ww"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Open floating diagnostic window" },
    ["gh"] = { "0" },
    -- ["x"] = { "V" },
    -- ["d"] = { "V" },
  },
}

-- more keybinds!

return M
