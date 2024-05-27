-- Add vscode specific thingys here
require 'win_bootstrap'

vim.opt.clipboard = 'unnamedplus'

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', 'H', '^', { silent = true, noremap = true })
vim.keymap.set('n', 'L', '$', { silent = true, noremap = true })

vim.keymap.set('n', '<leader>x', '*``cgn', { desc = 'Replace word' })

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
