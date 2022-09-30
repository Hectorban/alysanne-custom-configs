local autocmd = vim.api.nvim_create_autocmd
local new_cmd = vim.api.nvim_create_user_command
local opt = vim.opt
local g = vim.g
local o = vim.o

-- autocmds
autocmd("FileType", {
   pattern = "norg",
   callback = function()
      -- vim.opt.laststatus = 0
      opt.number = false
      opt.showtabline = 0
      opt.cole = 1
      opt.foldlevel = 10
   end,
})

o.guifont = "FiraCode Nerd Font:h11"
g.neovide_transparency = 0.8
g.neovide_cursor_vfx_mode = "Railgun"

-- commands

-- I dont use shade.nvim/autosave.nvim all the time so made commands for them 
-- So this makes easy to lazy load them at cmds

new_cmd("EnableShade", function()
   require("shade").setup()
end, {})

new_cmd("EnableAutosave", function()
   require("autosave").setup()
end, {})
