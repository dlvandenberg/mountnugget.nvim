local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  local ret = {
    NoiceCmdlineIconInput = { fg = c.arylide },
    NoiceCmdlineIconLua = { fg = c.moonstone },
    NoiceCmdlinePopupBorderInput = { fg = c.arylide },
    NoiceCmdlinePopupBorderLua = { fg = c.moonstone },
    NoiceCmdlinePopupTitleInput = { fg = c.arylide },
    NoiceCmdlinePopupTitleLua = { fg = c.moonstone },
    NoiceCompletionItemKindDefault = { fg = c.mountbatten, bg = c.none },
  }

  require("mountnugget.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
