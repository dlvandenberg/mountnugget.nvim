local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  return {
    TelescopeBorder = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },
    TelescopePromptBorder = { fg = c.arylide, bg = c.bg_float },
    TelescopePromptTitle = { fg = c.arylide, bg = c.bg_float },
    TelescopeResultsComment = { fg = c.surface_2 },
    TelescopeSelection = { fg = c.fg, bg = c.bg_float, bold = true },
    TelescopeSelectionCaret = { fg = c.moonstone },
    TelescopeMatching = { fg = c.arylide },
  }
end

return M
