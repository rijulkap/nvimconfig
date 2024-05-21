return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      size = 20,
      open_mapping = [[<c-t>]],
      autochdir = true,
      hide_numbers = true,
      persist_mode = true,
      direction = 'float',
      close_on_exit = false,
      shell = vim.o.shell,
      auto_scroll = true,
      float_opts = {
        border = 'curved',
      },
      winbar = {
        enabled = false,
      },
    },
  },
}
