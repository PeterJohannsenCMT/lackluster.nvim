local spec = require("lackluster.spec")
local color = require("lackluster.color")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup
return function(theme)
    return {
        plugin_name = "inlinehints",
        highlight = {
            spec.co(
							"LspInlayHint",
							color.inline_hints_fg,
							color.inline_hints_bg,
							{}
						),
        },
    }
end
