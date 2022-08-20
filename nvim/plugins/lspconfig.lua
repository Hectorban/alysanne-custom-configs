local attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "sumneko_lua",
  "tsserver",
  "gopls",
  "eslint",
  "solargraph",
  "sqls",
  "tailwindcss",
  "clojure_lsp",
  "taplo",
  "jsonls",
  "graphql",
  "terraformls",
  "pylsp"
}

for _, lsp in ipairs(servers) do
   lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities,
      root_dir = vim.loop.cwd,
   }
end

