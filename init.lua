--  <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
  require 'vscode'
else
  require 'config'
end
