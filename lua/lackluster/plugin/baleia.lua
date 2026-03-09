local spec = require("lackluster.spec")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup


local highlight_pairs = {
	{ name = "BaleiaColors_341_4_none_none", fg = "#3040d0"},
	{ name = "BaleiaColors_0_1_none_none", fg = "#d04030"},
}

return function(theme)
    local highlight = {}
    for i, pair in ipairs(highlight_pairs) do
        highlight[i] = spec.fg(pair.name, pair.fg)
    end

    return {
        plugin_name = "baleia",
        highlight = highlight,
    }
end
