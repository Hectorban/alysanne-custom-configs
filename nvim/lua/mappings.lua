require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-p>", ":Telescope find_files <CR>", { desc = "  find files" })
map("n", "<C-f>", ":Telescope live_grep <CR>", { desc = "   live grep" })
map("n", "<leader>gc", ":Telescope git_commits <CR>", { desc = "   git commits" })

map("n", "<leader>t", function()
  require("nvchad.term").toggle({ pos = "sp", id ='abc' })
end, { desc = "  Toggle horizontal term" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
