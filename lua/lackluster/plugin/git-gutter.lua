local spec = require("lackluster.spec")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup
return function(theme)
    return {
        plugin_name = "git_gutter",
        highlight = {
            spec.fg("GitGutterAdd", theme.diff.add),
            spec.ln("GitGutterChangeDelete", "GitGutterChange"),

            spec.ln("GitGutterAddLine", "DiffAdd"),
            spec.ln("GitGutterChangeLine", "DiffChange"),
            spec.ln("GitGutterDeleteLine", "DiffDelete"),
            spec.ln("GitGutterChangeDeleteLine", "DiffChange"),

            spec.fg("GitGutterAddLineNr", theme.diff.add),
            spec.fg("GitGutterChange", theme.diff.change),
            spec.fg("GitGutterChangeLineNr", theme.diff.change),
            spec.fg("GitGutterDelete", theme.diff.delete),
            spec.fg("GitGutterDeleteLineNr", theme.diff.delete),
        },
    }
end
