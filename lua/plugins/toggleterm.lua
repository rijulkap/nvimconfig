return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      size = 60,
      open_mapping = [[<c-\>]],
      autochdir = true,
      hide_numbers = true,
      -- persist_mode = true,
      -- direction = 'float',
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

      vim.keymap.set('n', '<A-1>', function()
        bot:toggle()
      end)

      vim.keymap.set('n', '<A-2>', function()
        side:toggle()
      end)

      vim.keymap.set('n', '<A-3>', function()
        float:toggle()
      end)

      vim.keymap.set('t', '<esc><esc>', function()
        vim.cmd ':ToggleTerm'
      end)
    end,
  },
}
