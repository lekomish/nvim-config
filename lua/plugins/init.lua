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
      local path = "~/AppData/Local/nvim-data/mason/packages/debugpy/venv/Scripts/python.exe"
      require("dap-python").setup(path)
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

  -- Go plugins
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
}
