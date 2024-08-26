local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  return {
    NeotestAdapterName = { fg = c.mountbatten, bold = true },
    NeotestBorder = { fg = c.border },
    NeotestDir = { fg = c.moonstone },
    NeotestExpandMarker = { fg = c.bg_visual },
    NeotestFailed = { fg = c.error },
    NeotestFile = { fg = c.light_blue },
    NeotestFocused = { fg = c.arylide, bold = true, underline = true },
    NeotestIndent = { fg = c.fg_sidebar },
    NeotestMarked = { fg = c.pink, bold = true },
    NeotestNamespace = { fg = c.citron },
    NeotestPassed = { fg = c.asparagus },
    NeotestRunning = { fg = c.old_gold },
    NeotestSkipped = { fg = c.sky },
    NeotestTarget = { fg = c.gutter_highlight },
    NeotestTest = { fg = c.fg_sidebar },
    NeotestWinSelect = { fg = c.moonstone },
    NeotestUnknown = { fg = c.fg },
  }
end

return M
