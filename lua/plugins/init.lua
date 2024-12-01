return {
  -- Format
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Syntax highlight
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },
}
