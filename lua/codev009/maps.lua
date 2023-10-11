local keymap = require "vim.keymap"

-- NeoTree open/close keymap set
keymap.set('n', '<C-a>', '<ESC>:NeoTreeReveal<cr>')
keymap.set('', '<C-s>', '<ESC>:NeoTreeClose<cr>')

-- Set leader key(\) for deleting buffer :bd!
keymap.set('n', '<leader>d', ":bd! <CR>")

-- delete all buffers
keymap.set('n', '<leader>D', ":%bd! <CR>")
