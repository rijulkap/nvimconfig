return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      local logo = table.concat({
        [[                                                ]],
        [[                                          _.oo. ]],
        [[                  _.u[[/;:,.         .odMMMMMM' ]],
        [[               .o888UU[[[/;:-.  .o@P^    MMM^   ]],
        [[              oN88888UU[[[/;::-.        dP^     ]],
        [[             dNMMNN888UU[[[/;:--.   .o@P^       ]],
        [[            ,MMMMMMN888UU[[/;::-. o@^           ]],
        [[            NNMMMNN888UU[[[/~.o@P^              ]],
        [[            888888888UU[[[/o@^-..               ]],
        [[           oI8888UU[[[/o@P^:--..                ]],
        [[        .@^  YUU[[[/o@^;::---..                 ]],
        [[      oMP     ^/o@P^;:::---..                   ]],
        [[   .dMMM    .o@^ ^;::---...                     ]],
        [[  dMMMMMMM@^`       `^^^^                       ]],
        [[ YMMMUP^                                        ]],
        [[  ^^                                            ]],
        [[                                                ]],
      }, '\n')
      local pad = string.rep(' ', 22)

      local starter = require 'mini.starter'

      local starterconfig = {
        evaluate_single = true,
        header = logo,
        content_hooks = {
          starter.gen_hook.adding_bullet(pad .. '░ ', false),
          starter.gen_hook.aligning('center', 'center'),
        },
      }

      require('mini.starter').setup(starterconfig)
      require('mini.move').setup()
      require('mini.surround').setup()
    end,
  },
}
