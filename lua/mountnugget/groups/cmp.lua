local M = {}

---@type mountnugget.HighlightsFn
function M.get(c, opts)
  local result = {
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText = { fg = c.surface_0 },
    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.arylide, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.arylide, bg = c.none },
    CmpItemKindCodeium = { fg = c.moonstone, bg = c.none },
    CmpItemKindCopilot = { fg = c.moonstone, bg = c.none },
    CmpItemKindDefault = { fg = c.mountbatten, bg = c.none },
    CmpItemKindTabNine = { fg = c.moonstone, bg = c.none },
    CmpItemMenu = { fg = c.comment, bg = c.none },
  }

  require("mountnugget.groups.kinds").kinds(result, "CmpItemKind%s")
  return result
end

return M
