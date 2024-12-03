local nvlsp = require "nvchad.configs.lspconfig"

local opts = {
  server = {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
  },
}

return opts
