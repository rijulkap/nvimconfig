return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
      autochdir = true,
      hide_numbers = true,
      close_on_exit = true,
      shell = vim.o.shell,
      auto_scroll = true,
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
        bot:toggle()
      end)

      vim.keymap.set({ 'n', 't' }, '<A-2>', function()
        side:toggle()
      end)

      vim.keymap.set({ 'n', 't' }, '<A-3>', function()
        float:toggle()
      end)

      vim.keymap.set({ 't' }, '<esc><esc>', '<C-\\><C-n>')
    end,
  },
}
