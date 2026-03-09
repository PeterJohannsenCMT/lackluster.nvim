local spec = require("lackluster.spec")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup
return function(theme)
    return {
        plugin_name = "lsp-document-highlight",
        highlight = {
					spec.co("LspReferenceWrite", "none", "#202020", {}),
					spec.co("LspReferenceRead", "none", "#202020", {bold = true}),
					spec.co("LspReferenceText", "none", "#202020", {})
        },
    }
end
