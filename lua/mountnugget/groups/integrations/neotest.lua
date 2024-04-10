local M = {}

function M.get()
  return {
    NeotestPassed = { fg = C.asparagus },
    NeotestFailed = { fg = C.bittersweet },
    NeotestRunning = { fg = C.gold },
    NeotestSkipped = { fg = C.sky },
    NeotestTest = { fg = C.text },
    NeotestNamespace = { fg = C.citron },
    NeotestFocused = { bold = true, underline = true },
    NeotestFile = { fg = C.light_blue },
    NeotestDir = { fg = C.moonstone },
    NeotestIndent = { fg = C.overlay1 },
    NeotestExpandMarker = { fg = C.overlay1 },
    NeotestAdapterName = { fg = C.persian },
    NeotestWinSelect = { fg = C.moonstone, bold = true },
    NeotestMarked = { fg = C.pink, bold = true },
    NeotestTarget = { fg = C.bittersweet },
    NeotestUnknown = { fg = C.text },
  }
end

return M
