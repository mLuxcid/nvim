local M = {}

function M.setup(user_opts)
    for opt, value in pairs(user_opts) do
        vim.opt[opt] = value
    end
end


return M
