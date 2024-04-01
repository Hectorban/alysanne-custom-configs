local M = {}

M.treesitter = {
   ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
    "norg",
    "rust",
    "vim",
    "fish",
    "clojure",
    "ruby",
    "go",
    "graphql",
    "python",
    "fish",
    "tsx",
    "scss"
   },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",
    "shfmt",
    "shellcheck",
    "clojure-lsp",
    "gopls",
    "solargraph",
    "rubocop",
    "sqls",
    "rust-analyzer",
    "dockerfile-language-server",
    "eslint-lsp",
    "haskell-language-server",
    "jsonlint",
    "prettier",
    "ruby-lsp",
    "taplo"
  },
}


M.nvimtree = {
   git = {
      enable = true,
   },

   renderer = {
      highlight_git = true,
      icons = {
         show = {
            git = true,
         },
      },
   },
}

M.blankline = {
   filetype_exclude = {
      "help",
      "terminal",
      "alpha",
      "packer",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "nvchad_cheatsheet",
      "lsp-installer",
      "norg",
      "",
   },
}

return M
