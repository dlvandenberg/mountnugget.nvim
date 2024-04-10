local M = {}

function M.get()
  return {
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeSelectionCaret = { fg = C.vanilla },
    TelescopeSelection = {
      fg = C.text,
      bg = C.surface1,
      bold = true,
    },
    TelescopeMatching = { fg = C.moonstone },
  }
end

return M
