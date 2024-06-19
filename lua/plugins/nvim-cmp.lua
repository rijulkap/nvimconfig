return {
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
    },

    opts = function()
      local cmp = require 'cmp'
      return {
        completion = { completeopt = 'menu,menuone,noinsert,noselect' },
        preselect = cmp.PreselectMode.None,
        mapping = cmp.mapping.preset.insert {
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<CR>'] = cmp.mapping.confirm { select = true },
          ['<C-Space>'] = cmp.mapping.complete {},
        },
        sources = cmp.config.sources {
          { name = 'path' },
          { name = 'nvim_lsp' },
        },
      }
    end,
  },
}
