local options = {
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },
    css = { "prettier" },
    go = { "gofumpt", "goimports-reviser", "golines" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    lua = { "stylua" },
    python = { "ruff_fix", "ruff_format" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
  },

  formatters = {
    -- Go
    ["go-imports-reviser"] = {
      prepend_args = {
        "-rm-unused",
      },
    },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
