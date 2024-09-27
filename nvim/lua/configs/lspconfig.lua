-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "lua_ls",
  "emmet_ls",
  "tsserver",
  "gopls",
  "eslint",
  "solargraph",
  "sqlls",
  "tailwindcss",
  "clojure_lsp",
  "taplo",
  "jsonls",
  "graphql",
  "terraformls",
  "pylsp",
  "solidity",
  "svelte",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
