local spec = require("lackluster.spec")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup
return function(theme)
    return {
        plugin_name = "git_signs",
        highlight = {
            spec.fg("NeogitAdd", theme.diff.add),
            spec.fg("NeogitChange", theme.diff.change),
            spec.fg("NeogitRemove", theme.diff.delete),
        },
    }
end
