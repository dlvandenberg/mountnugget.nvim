local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  return {
    LazyProgressDone = { bold = true, fg = c.rose },
    LazyProgressTodo = { bold = true, fg = c.fg_gutter },
  }
end

return M
