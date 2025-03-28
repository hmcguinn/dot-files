local M = {}

M.ui = {
  theme = "falcon",
  theme_toggle = { "ashes", "falcon" },


  statusline = {
    theme = "vscode_colored",
    separator_style = "round",
  },
}

-- m.plugins = "custom.plugins"

-- check core.mappings for table structure
-- m.mappings = require "custom.mappings"

vim.g.gitblame_message_template = '<summary> - <date> - <author>'
vim.g.gitblame_date_format = '%r'



return M
