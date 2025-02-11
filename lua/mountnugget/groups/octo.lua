local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  return {
    OctoViewer = { fg = c.sky },
  }
end

return M
