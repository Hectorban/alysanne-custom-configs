local g = vim.g
local o = vim.o

o.guifont = "firacode nerd font:h11"
g.neovide_transparency = 0.8
g.neovide_cursor_vfx_mode = "railgun"
vim.api.nvim_set_keymap("i", "<c-j>", 'copilot#accept("<cr>")', { silent = true, expr = true })
