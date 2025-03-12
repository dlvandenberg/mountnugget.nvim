local M = {}

---@type mountnugget.HighlightsFn
function M.get(c, opts)
  return {
    NvimTreeFolderIcon = { bg = c.none, fg = c.moonstone },
    NvimTreeGitDeleted = { fg = c.git.deleted },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeNormal = { fg = c.timberwolf, bg = c.bg_sidebar },
    NvimTreeNormalNC = { fg = c.timberwolf, bg = c.bg_sidebar },
    NvimTreeOpenedFile = { bg = c.bg_highlight },
    NvimTreeRootFolder = { fg = c.citron, bold = true },
    NvimTreeSpecialFile = { fg = c.gutter_highlight, underline = true },
    NvimTreeSymlink = { fg = c.eggplant, italic = true },
    NvimTreeWinSeparator = {
      fg = opts.styles.sidebars == "transparent" and c.border or c.bg_sidebar,
      bg = c.bg_sidebar,
    },
  }
end

return M
