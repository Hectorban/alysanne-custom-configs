---@type MappingsTable

local M = {}

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

M.disabled = {
  n = {
      ["<C-p>"] = "",
      ["<C-f>"] = "",
  },
}

M.telescope = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
    ["<C-f>"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
  },
}

M.nvterm = {
  n = {
    ["<leader>t"] = {
       function()
          require("nvterm.terminal").toggle "horizontal"
       end,
       "   toggle horizontal term",
    },
  }
}


M.shade = {
   n = {
      ["<leader>s"] = {
         function()
            require("shade").toggle()
         end,

         "   toggle shade.nvim",
      },
   },
}

return M
