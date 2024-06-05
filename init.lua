--  <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
  require 'vsc'
else
  require 'win_bootstrap'
  require 'options'
  require 'autocmds'
  require 'config'
  require 'keymaps'
end
