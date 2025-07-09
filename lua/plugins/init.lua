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
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require "configs.dap-ui"
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
  },

  {
    "theHamsta/nvim-dap-virtual-text",
  },

  {
    "nvim-telescope/telescope-dap.nvim",
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    config = function()
      -- local path = "~/AppData/Local/nvim-data/mason/packages/debugpy/venv/Scripts/python.exe"
      local path = "~/.virtaulenvs/debugpy/bin/python"
      require("dap-python").setup(path)
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
  },

  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dap-go").setup()
    end,
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

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension "lazygit"
    end,
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
    lazy = false,
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

  -- Rust plugins
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    opts = function()
      require "configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
    dependencies = {
      "neovim/nvim-lspconfig",
    },
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "saecki/crates.nvim",
    ft = { "rust" },
    event = { "BufRead Cargo.toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },

  -- Code assistant
  {
    "Exafunction/codeium.vim",
    lazy = false,
    config = function()
      vim.g.codeium_enabled = false
      vim.g.codeium_no_map_tab = false
    end,
  },
}
