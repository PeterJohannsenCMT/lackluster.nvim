local spec = require("lackluster.spec")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup
return function(theme)
    return {
        plugin_name = "git_signs",
        highlight = {
            spec.fg("GitSignsAdd", theme.diff.add),
            spec.fg("GitSignsChange", theme.diff.change),
            spec.fg("GitSignsDelete", theme.diff.delete),

            spec.fg("GitSignsCurrentLineBlame", theme.diff.change),

            spec.ln("GitSignsTopdelete", "GitSignsDelete"),
            spec.ln("GitSignsChangedelete", "GitSignsChange"),
            spec.ln("GitSignsUntracked", "GitSignsAdd"),

            spec.ln("GitSignsAddNr", "GitSignsAdd"),
            spec.ln("GitSignsChangeNr", "GitSignsChange"),
            spec.ln("GitSignsDeleteNr", "GitSignsDelete"),
            spec.ln("GitSignsTopdeleteNr", "GitSignsTopdelete"),
            spec.ln("GitSignsChangedeleteNr", "GitSignsChangedelete"),
            spec.ln("GitSignsUntrackedNr", "GitSignsUntracked"),

            spec.ln("GitSignsAddLn", "DiffAdd"),
            spec.ln("GitSignsChangeLn", "DiffChange"),
            spec.ln("GitSignsDeleteLn", "DiffDelete"),
            spec.ln("GitSignsChangedeleteLn", "DiffChange"),
            spec.ln("GitSignsUntrackedLn", "DiffAdd"),
        },
    }
end
