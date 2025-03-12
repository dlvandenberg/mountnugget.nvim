local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  return {
    GitSignsAdd = { fg = c.git.add },
    GitSignsChange = { fg = c.git.change },
    GitSignsDelete = { fg = c.git.delete },
    GitSignsCurrentLineBlame = { fg = c.surface_1 },
    GitSignsAddPreview = "DiffAdd",
    GitSignsDeletePreview = "DiffDelet",
  }
end

return M
