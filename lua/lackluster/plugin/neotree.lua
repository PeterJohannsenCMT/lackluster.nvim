local spec = require("lackluster.spec")
local color = require("lackluster.color")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup


return function(theme)

	local highlight_pairs = {
		{name = "NeotreeFloatNormal", fg = theme.ui.fg_normal, bg = theme.ui.bg_normal},
		{name = "NeotreeFloatTitle", bg = theme.ui.fg_normal, fg = theme.ui.bg_normal},
		{name = "NeotreeFloatBorder", fg = theme.ui.fg_normal, bg = theme.ui.bg_normal},
		{name = "NeotreeTitleBar", bg = theme.ui.fg_normal, fg = theme.ui.bg_normal},
		{name = "NeotreePreview", bg = theme.ui.fg_normal, fg = theme.ui.bg_normal},
		{name = "NeotreeRootName", fg = theme.ui.fg_normal, bg = theme.ui.bg_normal},
	}

    local highlight = {}
    for i, pair in ipairs(highlight_pairs) do
        highlight[i] = spec.co(pair.name, pair.fg, pair.bg)
    end
    return {
        plugin_name = "neotree",
        highlight = highlight,
    }
end

