local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
    local config = require("onedarkpro.config").config

    return {
      [ "@NeorgH1" ] = { fg = theme.palette.green },
      [ "@NeorgH2" ] = { fg = theme.palette.yellow },
      [ "@NeorgH3" ] = { fg = theme.palette.cyan },
      [ "@NeorgH4" ] = { fg = theme.palette.thm_gld },
      [ "@NeorgH5" ] = { fg = theme.palette.red },
      [ "@NeorgH6" ] = { fg = theme.palette.blue },
      [ "@undone" ] = { fg = theme.palette.blue },
      [ "@pending" ] = { fg = theme.palette.yellow },
      [ "@done" ] = { fg = theme.palette.supergreen },
      [ "@on_hold" ] = { fg = theme.palette.blue },
      [ "@urgent" ] = { fg = theme.palette.red },
      [ "@uncertain" ] = { fg = theme.palette.cyan },
      [ "@cancelled" ] = { fg = theme.palette.orange },
      [ "@recurring" ] = { fg = theme.palette.purple },
    }
end

return M

