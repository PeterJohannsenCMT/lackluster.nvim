local spec = require("lackluster.spec")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup

return function(theme)
  local highlight_pairs = {
	  {name = "@todo_manager.done", fg = theme.diff.add},
	  {name = "@todo_manager.undone", fg = theme.diff.delete},
	  {name = "@todo_manager.pending", fg = theme.diff.change},
	  {name = "@todo_manager.question", fg = "#4040c0"},
  }
    local highlight = {}
    for i, pair in ipairs(highlight_pairs) do
        highlight[i] = spec.fg(pair.name, pair.fg)
    end
	vim.api.nvim_set_hl(0, "@todo_manager.headings", {fg = "#606060", bold = true})
	vim.api.nvim_set_hl(0, "@todo_manager.tags", {fg = "#a090c0", bg = "#060606"})
	vim.api.nvim_set_hl(0, "@todo_manager.folds", {fg = "#808080", bg = "#161616"})
	vim.api.nvim_set_hl(0, "@todo_manager.files", {fg = "#808090", bg = "#101010"})

    return {
        plugin_name = "neorg",
        highlight = highlight,
    }
end
