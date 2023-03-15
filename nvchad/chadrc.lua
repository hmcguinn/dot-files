---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "falcon",
  theme_toggle = { "ashes", "falcon" },


  statusline = {
    theme = "vscode_colored",
    separator_style = "round",
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

vim.g.gitblame_message_template = '<summary> - <date> - <author>'
vim.g.gitblame_date_format = '%r'

return M
