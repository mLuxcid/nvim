local M = {
    'williamboman/mason-lspconfig.nvim',
    event = VeryLazy,
    dependencies = {
        'williamboman/mason.nvim',
    }
}

function M.config()
    local lspconfig = require('lspconfig')
    require('mason').setup({
        ui = {
            border = 'single',
        },
    })
    require('mason-lspconfig').setup({
        ensure_installed = {
            'lua_ls', 'clangd'
        },
    })

    -- setup lsp servers
    local default_handler = function(server)
        require('lspconfig')[server].setup({
            capabilities = require('cmp_nvim_lsp').default_capabilities()
        })
    end

    require('mason-lspconfig').setup_handlers({
        default_handler,
    })

    lspconfig.lua_ls.setup({
        settings = {
            Lua = {
                completion = {
                    callSnippet = true,
                },
            },
        },
    })
end

return M
