local spec = require("lackluster.spec")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup
return function(theme)
    return {
        plugin_name = "neogit",
        highlight = {
            spec.fg("NeogitAdd", theme.diff.add),
            spec.fg("NeogitDiffAddHighlight", theme.diff.add),
            spec.fg("NeogitDiffAdd", theme.diff.add),
            spec.fg("NeogitAdditions", theme.diff.add),
            spec.fg("NeogitDiffAddCursor", theme.diff.add_cursor),
            spec.fg("NeogitChange", theme.diff.change),
            spec.fg("NeogitRemove", theme.diff.delete),
            spec.fg("NeogitDiffRemove", theme.diff.delete),
            spec.fg("NeogitDeletions", theme.diff.delete),
            spec.fg("NeogitDiffDelete", theme.diff.delete),
            spec.fg("NeogitDiffDeleteHighlight", theme.diff.delete),
            spec.fg("NeogitDiffRemoveCursor", theme.diff.delete_cursor),
            spec.fg("NeogitDiffDeleteCursor", theme.diff.delete_cursor),
            spec.fg("NeogitHunkHeader", theme.diff.hunk),
            spec.fg("NeogitHunkHeaderCursor", theme.diff.hunk_cursor),
            spec.fg("NeogitHunkHeaderHighlight", theme.diff.hunk_cursor),
            spec.fg("NeogitDiffContextCursor", theme.diff.context_cursor),
        },
    }
end
