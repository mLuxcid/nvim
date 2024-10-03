LAZY_PLUGIN_SPEC = {}
local M = {}

function M.add(item)
    table.insert(LAZY_PLUGIN_SPEC, { import = item })
end

return M
