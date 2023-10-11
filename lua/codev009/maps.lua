local keymap = require "vim.keymap"

-- NeoTree open/close keymap set
keymap.set('n', '<C-a>', '<ESC>:NeoTreeReveal<cr>')
keymap.set('', '<C-s>', '<ESC>:NeoTreeClose<cr>')
keymap.set('n', '<leader>d', ":bd! <CR>")
