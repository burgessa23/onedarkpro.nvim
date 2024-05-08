local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
    local config = require("onedarkpro.config").config

    return {
      [ "@neorg.headings.1.prefix.norg" ] = { fg = theme.palette.green },
      [ "@NeorgH2" ] = { fg = theme.palette.yellow },
      [ "@NeorgH3" ] = { fg = theme.palette.cyan },
      [ "@NeorgH4" ] = { fg = theme.palette.thm_gld },
      [ "@NeorgH5" ] = { fg = theme.palette.red },
      [ "@NeorgH6" ] = { fg = theme.palette.blue },
    }
end

return M

