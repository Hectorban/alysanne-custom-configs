return {
   -- autoclose tags in html, jsx etc
   ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
         require("custom.plugins.smolconfigs").autotag()
      end,
   },

   ["neovim/nvim-lspconfig"] = {
       config = function()
         require "plugins.configs.lspconfig"
         require "custom.plugins.lspconfig"
       end,
   },

   -- format & linting
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },

   -- minimal modes
   ["Pocco81/TrueZen.nvim"] = {
      cmd = {
         "TZAtaraxis",
         "TZMinimalist",
         "TZFocus",
      },
      config = function()
         require "custom.plugins.truezen"
      end,
   },

   -- get highlight group under cursor
   ["nvim-treesitter/playground"] = {
      cmd = "TSCaptureUnderCursor",
      config = function()
         require("nvim-treesitter.configs").setup()
      end,
   },

   ["simrat39/rust-tools.nvim"] = {
      after = {"nvim-lspconfig"},
      config = function()
         require("rust-tools").setup()
      end,
   },

   ["shaunsingh/oxocarbon.nvim"] = {
      cmd = './install.sh'
   },

   -- dim inactive windows
   ["andreadev-it/shade.nvim"] = {
      module = "shade",
      config = function()
         require("custom.plugins.smolconfigs").shade()
      end,
   },

   ["Pocco81/AutoSave.nvim"] = {
      module = "autosave",
      config = function()
         require("custom.plugins.smolconfigs").autosave()
      end,
   },
}
