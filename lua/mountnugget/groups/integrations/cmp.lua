local M = {}

function M.get()
  return {
    CmpItemAbbr = { fg = C.overlay2 },
    CmpItemAbbrDeprecated = { fg = C.overlay0, strikethrough = true },
    CmpItemKind = { fg = C.moonstone },
    CmpItemMenu = { fg = C.text },
    CmpItemAbbrMatch = { fg = C.text, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = C.text, bold = true },

    -- Kind support
    CmpItemKindSnippet = { fg = C.eggplant },
    CmpItemKindKeyword = { fg = C.bittersweet },
    CmpItemKindText = { fg = C.ash_grey },
    CmpItemKindMethod = { fg = C.moonstone },
    CmpItemKindConstructor = { link = "CmpItemKindMethod" },
    CmpItemKindFunction = { link = "CmpItemKindMethod" },
    CmpItemKindFolder = { link = "CmpItemKindMethod" },
    CmpItemKindModule = { link = "CmpItemKindMethod" },
    CmpItemKindConstant = { fg = C.pink },
    CmpItemKindField = { fg = C.vanilla },
    CmpItemKindProperty = { link = "CmpItemKindField" },
    CmpItemKindUnit = { link = "CmpItemKindField" },
    CmpItemKindEnum = { link = "CmpItemKindField" },
    CmpItemKindClass = { fg = C.citron },
    CmpItemKindVariable = { fg = C.timberwolf },
    CmpItemKindFile = { fg = C.moonstone },
    CmpItemKindInterface = { fg = C.citron },
    CmpItemKindColor = { fg = C.bittersweet },
    CmpItemKindReference = { fg = C.bittersweet },
    CmpItemKindEnumMember = { fg = C.bittersweet },
    CmpItemKindStruct = { fg = C.moonstone },
    CmpItemKindValue = { fg = C.pink },
    CmpItemKindEvent = { fg = C.moonstone },
    CmpItemKindOperator = { fg = C.moonstone },
    CmpItemKindTypeParameter = { fg = C.moonstone },
    CmpItemKindCopilot = { fg = C.ash_grey },
  }
end

return M
