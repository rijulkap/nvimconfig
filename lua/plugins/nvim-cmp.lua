return {
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
    },

    opts = function(_, opts)
      local cmp = require 'cmp'

      vim.api.nvim_set_hl(0, 'CmpGhostText', { link = 'Comment', default = false })

      local auto_select = false

      local cmp_src = {}

      if opts.sources ~= nil then
        cmp_src = opts.sources
        table.insert(cmp_src, 1, { name = 'path' })
        table.insert(cmp_src, 1, { name = 'nvim_lsp' })
      else
        cmp_src = { { name = 'path' }, { name = 'nvim_lsp' } }
      end

      return {
        completion = { completeopt = 'menu,menuone,noinsert' .. (auto_select and '' or ',noselect') },
        preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
        mapping = cmp.mapping.preset.insert {
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<CR>'] = cmp.mapping.confirm { select = auto_select },
          ['<Esc>'] = cmp.mapping.abort(),
          ['<C-Space>'] = cmp.mapping.complete {},
        },

        sources = cmp.config.sources(cmp_src),
        experimental = {
          ghost_text = {
            hl_group = 'CmpGhostText',
          },
        },
      }
    end,
  },
}
