local M = {}

function M.get()
  return {
    NvimTreeFolderName = { fg = C.moonstone },
    NvimTreeFolderIcon = { fg = C.moonstone },
    NvimTreeNormal = { fg = C.text, bg = C.peak },
    NvimTreeOpenedFolderName = { fg = C.sky },
    NvimTreeEmptyFolderName = { fg = C.moonstone },
    NvimTreeIdentMarker = { fg = C.overlay0 },
    NvimTreeWinSeparator = {
      fg = C.base,
      bg = C.slope,
    },
    NvimTreeRootFolder = { fg = C.old_gold, bold = true },
    NvimTreeSymLink = { fg = C.eggplant, italic = true },
    NvimTreeStatuslineNC = { fg = C.peak, bg = C.peak },
    NvimTreeGitDirty = { fg = C.citron },
    NvimTreeGitNew = { fg = C.light_blue },
    NvimTreeGitDeleted = { fg = C.bittersweet },
    NvimTreeSpecialFile = { fg = C.timberwolf },
    NvimTreeImageFile = { fg = C.text },
    NvimTreeOpenedFile = { fg = C.pink },
  }
end

return M
