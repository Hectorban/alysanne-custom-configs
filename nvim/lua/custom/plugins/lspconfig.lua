local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config

   local servers = {
     "html",
     "cssls",
     "pyright",
     "solargraph",
     "sumneko_lua",
     "dockerls"
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
         }
       }
     }
   }

   -- Typsecript
   lspconfig.tsserver.setup {
      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
      end,
   }
end

return M
