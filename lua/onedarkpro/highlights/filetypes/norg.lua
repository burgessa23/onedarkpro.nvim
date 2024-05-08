local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
    local config = require("onedarkpro.config").config

    return {
      heading1 = { fg = theme.palette.green },
      heading2 = { fg = theme.palette.yellow },
      heading3 = { fg = theme.palette.cyan },
      heading4 = { fg = theme.palette.thm_gld },
      heading5 = { fg = theme.palette.red },
      heading6 = { fg = theme.palette.blue },
    }
end

return M

