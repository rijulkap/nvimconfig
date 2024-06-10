return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
      autochdir = true,
      hide_numbers = true,
      close_on_exit = true,
      shell = vim.o.shell,
      auto_scroll = true,
      persist_mode = true,
      persist_size = true,
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
      winbar = {
        enabled = false,
      },
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)
      local Terminal = require('toggleterm.terminal').Terminal
      local bot = Terminal:new { direction = 'horizontal' }
      local side = Terminal:new { direction = 'vertical' }
      local float = Terminal:new { direction = 'float' }

      vim.keymap.set({ 'n', 't' }, '<A-1>', function()
        bot:toggle(15)
      end)

      vim.keymap.set({ 'n', 't' }, '<A-2>', function()
        side:toggle(vim.o.columns * 0.4)
      end)

      vim.keymap.set({ 'n', 't' }, '<A-3>', function()
        float:toggle()
      end)

      vim.keymap.set({ 't' }, '<esc><esc>', '<C-\\><C-n>')
    end,
  },
}
