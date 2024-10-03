local bufnr = vim.api.nvim_get_current_buf()
local opts = { buffer = bufnr, silent = true }
vim.keymap.set(
    'n',
    'g.',
    function()
        vim.cmd.RustLsp('codeAction')
    end,
    opts
)

vim.keymap.set(
    'n',
    'K',
    function()
        vim.cmd.RustLsp{'hover', 'actions'}
    end,
    opts
)
