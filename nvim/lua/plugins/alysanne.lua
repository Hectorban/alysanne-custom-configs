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
    config = function()
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
      local rt = require("rust-tools")
      rt.setup({
        inlay_hints = {
          -- automatically set inlay hints (type hints)
          -- default: true
          auto = true,

          -- Only show inlay hints for the current line
          only_current_line = true,
        },


        server = {
          standalone = true,
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<Leader>q", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },

        hover_actions = {
          auto_focus = true,
          border = {
            { "╭", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╮", "FloatBorder" },
            { "│", "FloatBorder" },
            { "╯", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╰", "FloatBorder" },
            { "│", "FloatBorder" },
          },

        }
      })
    end,
  },

  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim.sorround").setup()
    end,
  },

  {
    "melbaldove/llm.nvim",
    dependencies = { "nvim-neotest/nvim-nio" },
    lazy = false,
    config = function()
      require("llm").setup {
        timeout_ms = 10000,
        services = {
          -- Supported services configured by default
          openai = {
            url = "https://api.openai.com/v1/chat/completions",
            model = "gpt-4o",
            api_key_name = "OPENAI_API_KEY",
          },
        },
      }
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
  },
}

return plugins
