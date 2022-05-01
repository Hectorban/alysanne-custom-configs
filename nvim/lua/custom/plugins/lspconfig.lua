local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config

   local servers = {
     "html",
     "cssls",
     "pyright",
     "sumneko_lua",
     "tsserver",
     "gopls",
     "eslint",
     "sqlls",
     "tailwindcss",
     "clojure_lsp"
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end

   -- Rust
   lspconfig.rust_analyzer.setup {
     on_attach = attach,
     capabilities = capabilities,
     settings = {
       ["rust_analyzer"] = {
         checkOnSave = {
          command = "clippy"
         },
         inlayHints = {
          typeHints = true
         }
       }
     }
   }

   lspconfig.solargraph.setup {
     on_attach = attach,
     capabilities = capabilities,
     settings = {
       onSave = {
         command = 'rubocop -a'
       }
     }
   }
end

return M
