local colors = require("onedarkpro.helpers").get_colors("onedark_vivid")
local config = require("onedarkpro.config").config

local onedarkpro = {}

onedarkpro.normal = {
    a = { bg = colors.red, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.red },
    c = { bg = colors.bg_statusline, fg = colors.fg },
}

onedarkpro.insert = {
    a = { bg = colors.cyan, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.cyan },
}

onedarkpro.command = {
    a = { bg = colors.purple, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.purple },
}

onedarkpro.visual = {
    a = { bg = colors.yellow, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.yellow },
}

onedarkpro.replace = {
    a = { bg = colors.cyan, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.cyan },
}

local inactive_bg = config.options.highlight_inactive_windows and colors.color_column or colors.bg
onedarkpro.inactive = {
    a = { bg = inactive_bg, fg = colors.blue },
    b = { bg = inactive_bg, fg = colors.fg_gutter_inactive, gui = "bold" },
    c = { bg = inactive_bg, fg = colors.fg_gutter_inactive },
}

return onedarkpro
