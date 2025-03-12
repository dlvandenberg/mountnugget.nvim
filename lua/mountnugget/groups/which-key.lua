local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  return {
    WhichKey = "NormalFloat",
    WhichKeyGroup = { fg = c.moonstone },
    WhichKeyBorder = "FloatBorder",
    WhichKeyDesc = { fg = c.vanilla },
    WhichKeyValue = { fg = c.bg_visual },
    WhichKeySeparator = { fg = c.comment },
  }
end

return M
