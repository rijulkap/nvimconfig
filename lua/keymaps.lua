vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', '<cmd>botright copen<CR>', { desc = 'Open [Q]uickfix list' })

vim.keymap.set('n', 'H', '^', { silent = true, noremap = true })
vim.keymap.set('n', 'L', '$', { silent = true, noremap = true })

vim.keymap.set('n', '<leader>xr', '*``cgn', { desc = 'Replace word' })

vim.keymap.set('n', '<C-o>', '<C-o>zz')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>bb', function()
  local curbufnr = vim.api.nvim_get_current_buf()
  local buflist = vim.api.nvim_list_bufs()
  for _, bufnr in ipairs(buflist) do
    if vim.bo[bufnr].buflisted and bufnr ~= curbufnr and (vim.fn.getbufvar(bufnr, 'bufpersist') ~= 1) then
      vim.cmd('bd ' .. tostring(bufnr))
    end
  end
end, { silent = true, desc = 'Close unused buffers' })

vim.keymap.set('n', '<leader>bd', '<cmd>bd<CR>', { silent = true, desc = 'Close buffers' })
