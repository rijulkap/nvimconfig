return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = { 'bash', 'c', 'cpp', 'c_sharp', 'python', 'rust', 'json', 'markdown', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    config = function(_, opts)
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)
      vim.opt.foldmethod = 'expr'
      --
      -- -- :h vim.treesitter.foldexpr()
      vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
      --
      -- -- ref: https://github.com/neovim/neovim/pull/20750
      vim.opt.foldtext = ''
      vim.opt.fillchars:append 'fold: '
      --
      -- -- Open all folds by default, zm is not available
      vim.opt.foldlevelstart = 99
    end,
  },
}
