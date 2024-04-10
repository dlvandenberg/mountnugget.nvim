local M = {}

function M.get()
  return {
    GitSignsAdd = { fg = C.asparagus },
    GitSignsChange = { fg = C.citron },
    GitSignsDelete = { fg = C.bittersweet },
    GitSignsCurrentLineBlame = { fg = C.surface1 },
    GitSignsAddPreview = { link = "DiffAdd" },
    GitSignsDeletePreview = { link = "DiffDelete" },
  }
end

return M
