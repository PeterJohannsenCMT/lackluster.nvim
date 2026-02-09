local spec = require("lackluster.spec")
local color = require("lackluster.color")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup


return function(theme)

	local highlight_pairs = {
		{name = "NeotestAdapterName", fg = theme.ui.fg_normal},
		{name = "NeotestBorder", fg = "none"},
		{name = "NeotestDir", fg = color.gray5},
		{name = "NeotestExpandMarker", fg = color.gray8},
		{name = "NeotestFailed", fg = "#c02020"},
		{name = "NeotestFile", fg = theme.ui.fg_normal},
		{name = "NeotestFocused", fg = color.gray9},
		{name = "NeotestIndent", fg = color.gray5},
		{name = "NeotestMarked", fg = color.gray6},
		{name = "NeotestNamespace", fg = color.gray6},
		{name = "NeotestPassed", fg = "#20c020"},
		{name = "NeotestRunning", fg = color.gray6},
		{name = "NeotestWinSelect", fg = color.gray6},
		{name = "NeotestSkipped", fg = color.gray6},
		{name = "NeotestTarget", fg = color.gray6},
		{name = "NeotestTest", fg = color.gray7},
		{name = "NeotestUnknown", fg = color.gray4},
		{name = "NeotestWatching", fg = color.gray8}
	}

    local highlight = {}
    for i, pair in ipairs(highlight_pairs) do
        highlight[i] = spec.fg(pair.name, pair.fg)
    end
    return {
        plugin_name = "neogit",
        highlight = highlight,
    }
end

