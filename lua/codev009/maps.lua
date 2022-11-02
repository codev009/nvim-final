local keymap = require "vim.keymap"

keymap.set('n', '<C-a>', '<ESC>:Lex<cr>:vertical resize 30<cr>', { silent = true })

-- Find files using Telescope command-line sugar.
