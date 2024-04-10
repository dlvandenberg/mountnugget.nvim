local M = {}

function M.get()
  return {
    WhichKey = { link = "NormalFloat" },
    WhichKeyBorder = { link = "FloatBorder" },

    WhichKeyGroup = { fg = C.moonstone },
    WhichKeySeparator = { fg = C.overlay0 },
    WhichKeyDesc = { fg = C.vanilla },
    WhichKeyValue = { fg = C.overlay0 },
  }

end

return M
