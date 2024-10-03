local M = {
    'nvim-treesitter/nvim-treesitter',
    event = VeryLazy,
}

function M.config()
    require('nvim-treesitter.configs').setup({
        highlight = {
            enable = true,
        }
    })
end

return M
