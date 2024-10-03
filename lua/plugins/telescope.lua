local util = require('util')

return {
    'nvim-telescope/telescope.nvim',
    keys = {
        { '<leader>ff', util.telescope('files') },
        { '<leader>lg', util.telescope('live_grep') },
        { '<leader>fb', '<CMD>Telescope buffers<CR>' },
    },
}
