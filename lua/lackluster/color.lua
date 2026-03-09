---@class LacklusterColor
local color = {
    lack = "#757575",
    luster = "#a6a6a6",
    orange = "#868686",
    yellow = "#969696",
    green = "#565656",
    blue = "#969696",
    red = "#D70000",
    none = "none",

    black = "#000000",
    gray1 = "#222222",
    gray2 = "#444444",
    gray3 = "#999999",
    gray4 = "#aaaaaa",
    gray5 = "#bbbbbb",
    gray6 = "#cccccc",
    gray7 = "#dddddd",
    gray8 = "#eeeeee",
    gray9 = "#ffffff",

    cursor_line = "#0f0f0f",

    inline_hints_fg = "#8080b0",
    inline_hints_bg = "none",
}

color.diff = {
    delete = { fg = color.gray8, bg = "#4a221d" },
    add = { fg = color.gray8, bg = "#223a2b" },
    delete_cursor = { fg = color.gray8, bg = "#542722" },
    add_cursor = { fg = color.gray8, bg = "#294433" },
    hunk = { fg = "#dddddd", bg = "#282828" },
    hunk_cursor = { fg = "#cccccc", bg = "#383838" },
    context_cursor = { fg = "#dddddd", bg = "#222222" },
    change = "#606080",
    info = "#808080",
}

return color
