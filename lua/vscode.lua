-- Add vscode specific thingys here
require 'core.win_bootstrap'

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', 'H', '^', { silent = true, noremap = true })
vim.keymap.set('n', 'L', '$', { silent = true, noremap = true })

vim.keymap.set('n', '<leader>x', '*``cgn', { desc = 'Replace word' })

vim.opt.clipboard = 'unnamedplus'
