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

  -- Lint
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },

  -- Debuger
  {
    "mfussenegger/nvim-dap",
  },

  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require "configs.dapui"
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    config = function()
      require "configs.dap.python"
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
  },

  -- Git
  {
    "tpope/vim-fugitive",
  },

  {
    "rbong/vim-flog",
    lazy = false,
    dependencies = {
      "tpope/vim-fugitive",
    },
  },

  {
    "sindrets/diffview.nvim",
    lazy = false,
  },

  -- Asynchronous IO
  {
    "nvim-neotest/nvim-nio",
  },

  -- Better UI
  {
    "stevearc/dressing.nvim",
    lazy = false,
  },

  {
    "kevinhwang91/nvim-bqf",
    lazy = false,
  },

  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- Better movement
  {
    "ggandor/leap.nvim",
    laze = false,
    config = function()
      require("leap").add_default_mappings(true)
    end,
  },
}
