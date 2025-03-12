local Util = require("mountnugget.util")

local M = {}

function M.get(c)
  return {
    TreesitterContext = { bg = Util.blend_bg(c.fg_gutter, 0.8) },
  }
end

return M
