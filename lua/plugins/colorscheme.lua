local M = {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    name = 'catppuccin'
}

function M.config()
    vim.cmd.colorscheme('catppuccin')
end

return M
