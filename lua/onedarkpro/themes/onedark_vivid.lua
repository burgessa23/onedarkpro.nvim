local meta = {
    name = "onedark_vivid",
    background = "dark",
}

local default_colors = {
    bg = "#1d1f21",
    fg = "#abb2bf",
    red = "#d70087",
    orange = "#ff6e27",
    yellow = "#f3e430",
    green = "#ff577d",
    cyan = "#0abdc6",
    blue = "#008ec4",
    purple = "#d300c4",
    white = "#abb2bf",
    black = "#282c34",
    gray = "#5c6370",
    highlight = "#e2be7d",
    comment = "#7f848e",
    none = "NONE",
}

---Colors which are generated depending on the values in the palette
---@param colors table the theme's color palette
---@return table
local function generate(colors)
    local color = require("onedarkpro.helpers")

    return {
        cursorline = colors.cursorline or color.lighten(colors.bg, 2.8),
        color_column = colors.color_column or color.lighten(colors.bg, 2.4),
        fold = colors.fold or color.lighten(colors.bg, 3),
        line_number = colors.line_number or "#495162",
        indentline = colors.indentline or "#3b4048",
        selection = colors.selection or color.lighten(colors.bg, 8.2),
        float_bg = colors.float_bg or color.darken(colors.bg, 2.8),
        inlay_hint = colors.inlay_hint or color.darken(colors.gray, 7),

        -- Git colors
        git_add = colors.git_add or "#109868",
        git_change = colors.git_change or "#948B60",
        git_delete = colors.git_delete or "#9a353d",

        git_hunk_add = colors.git_hunk_add or "#43554d",
        git_hunk_delete = colors.git_hunk_delete or "#502d30",
        git_hunk_add_inline = colors.git_hunk_add_inline or "#3f534f",
        git_hunk_change_inline = colors.git_hunk_change_inline or "#41483d",
        git_hunk_delete_inline = colors.git_hunk_delete_inline or "#6f2e2d",

        -- Git diff
        diff_add = colors.diff_add or "#003e4a",
        diff_delete = colors.diff_delete or "#501b20",
        diff_text = colors.diff_text or "#005869",

        -- Lualine colors
        bg_statusline = colors.bg_statusline or color.darken(colors.bg, 2.8),
        fg_gutter = colors.fg_gutter or color.lighten(colors.bg, 9.5),
        fg_gutter_inactive = colors.fg_gutter_inactive or colors.fg,

        -- Virtual text
        virtual_text_error = colors.virtual_text_error or color.lighten(colors.red, 9.3),
        virtual_text_warning = colors.virtual_text_warning or color.lighten(colors.yellow, 9),
        virtual_text_information = colors.virtual_text_information or color.lighten(colors.blue, 10.2),
        virtual_text_hint = colors.virtual_text_hint or color.lighten(colors.cyan, 10.8),
    }
end

return {
    meta = meta,
    palette = default_colors,
    generated = function()
        return generate(default_colors)
    end,
}
