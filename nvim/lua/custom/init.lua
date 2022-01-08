local hooks = require "core.hooks"

hooks.add("install_plugins", function(use)
   use "simrat39/rust-tools.nvim"
   use {
     "blackCauldron7/surround.nvim",
     config = function()
       require"surround".setup {mappings_style = "surround"}
     end
   }
end)
