return {

  {
    'zbirenbaum/copilot.lua',
    dependencies = {},
    cmd = 'Copilot',
    build = ':Copilot auth',
    opts = {},
  },
  {
    'nvim-cmp',
    dependencies = {
      {
        'zbirenbaum/copilot-cmp',
        dependencies = 'copilot.lua',
        opts = {},
        config = function(_, opts)
          local copilot_cmp = require 'copilot_cmp'
          copilot_cmp.setup(opts)
        end,
      },
    },
    opts = function(_, opts)
      if opts.sources == nil then
        opts.sources = {}
      end
      table.insert(opts.sources, 1, {
        name = 'copilot',
        group_index = 1,
        priority = 100,
      })
    end,
  },
}
