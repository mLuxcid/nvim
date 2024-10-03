local user_opts = {
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = -1,
    expandtab = true,
    number = true,
    relativenumber = true,
    ignorecase = false,
}

require('config').setup(user_opts)
require('keymap')

local plugins = require('config.plugins')

plugins.add('plugins.colorscheme')
plugins.add('plugins.rustacean-nvim')
plugins.add('plugins.nvim-cmp')
plugins.add('plugins.lspconfig')
plugins.add('plugins.mason')
plugins.add('plugins.telescope')
plugins.add('plugins.lualine')
plugins.add('plugins.treesitter')

-- keep at end
require('config.lazy')
