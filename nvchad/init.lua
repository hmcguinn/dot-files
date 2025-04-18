-- return {
--   {
--     "stevearc/conform.nvim",
--     config = function()
--       require "configs.conform"
--     end,
--   },
-- 
--   {
--     "nvim-tree/nvim-tree.lua",
--     opts = {
--       git = { enable = true },
--     },
--   },
-- }

local overrides = require("configs.overrides")
local actions = require("telescope.actions")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "plugins.custom.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.custom.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- overrde plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  { "f-person/git-blame.nvim" , lazy = false },
  { "prettier/vim-prettier" , lazy = false },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },
  { "github/copilot.vim", lazy = false },


  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- Uncomment if you want to re-enable which-key
  -- {
  --   "folke/which-key.nvim",
  --   enabled = true,
  -- },
}

return plugins

