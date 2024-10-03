local M = {
    'mrcjkb/rustaceanvim',
    lazy = false,
    version = '^5',
}

function M.config()
    -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
    vim.g.rustaceanvim = {
        server = {
            -- capabilities = capabilities,
        }
    }
end


return M
