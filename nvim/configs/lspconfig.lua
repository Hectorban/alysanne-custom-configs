local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
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

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
