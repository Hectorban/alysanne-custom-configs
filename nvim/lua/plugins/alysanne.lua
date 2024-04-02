local overrides = require "configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
      require("ibl").setup()
    end,
  },

  {
    "tpope/vim-fugitive",
    opts = overrides.blankline,
  },

  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "simrat39/rust-tools.nvim",
    lazy = false,
    config = function()
      require("rust-tools").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim.sorround").setup()
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "nvchad.configs.telescope"

      conf.defaults.mappings.i = {
        ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
        ["<C-f>"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
        ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
      }

     -- or 
     -- table.insert(conf.defaults.mappings.i, your table)

      return conf
    end,
  }
}

return plugins
