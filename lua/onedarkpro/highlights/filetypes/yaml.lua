local M = {}

---Get the highlight groups for the filetype
---@param theme table
---@return table
function M.groups(theme)
    return {
        ["@field.yaml"] = { fg = theme.palette.blue },
        ["@function.call.yaml"] = { fg = theme.palette.green },
        ["@punctuation.bracket.yaml"] = { fg = theme.palette.orange },
        ["@parameter.yaml"] = { fg = theme.palette.cyan },
        ["@string.yaml"] = { fg = theme.palette.fg },
    }
end

return M
