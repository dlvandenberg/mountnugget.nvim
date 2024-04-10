local M = {}

function M.get()
  return {
    markdownHeadingDelimiter = { fg = C.pink, bold = true },
    markdownCode = { fg = C.timberwolf },
    markdownCodeBlock = { fg = C.timberwolf },
    markdownLinkText = { fg = C.moonstone, underline = true },
    markdownH1 = { link = "rainbow1" },
    markdownH2 = { link = "rainbow2" },
    markdownH3 = { link = "rainbow3" },
    markdownH4 = { link = "rainbow4" },
    markdownH5 = { link = "rainbow5" },
    markdownH6 = { link = "rainbow6" },
  }
end

return M
