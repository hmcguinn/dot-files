-- require base mappings
require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- enter command mode
map("n", ";", ":", { desc = "Enter command mode" })

-- format file with Conform
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with Conform" })

-- escape insert mode
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- open floating diagnostic window
map("n", "<leader>ww", vim.diagnostic.open_float, { desc = "Open floating diagnostic window" })

-- git blame toggle
map("n", "<leader>gg", ":GitBlameToggle<CR>", { desc = "Toggle Git blame" })

-- prettier async
map("n", "<leader>pp", ":PrettierAsync<CR>", { desc = "Prettier async format" })

-- copilot panel
map("n", "<leader>cp", ":Copilot panel<CR>", { desc = "Open Copilot panel" })

-- move cursor to the beginning of the line
map("n", "gh", "0", { desc = "Move cursor to the beginning of the line" })

