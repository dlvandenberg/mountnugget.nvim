local Util = require("mountnugget.util")

local M = {}

---@type mountnugget.HighlightsFn
function M.get(c)
  local result = {
    RenderMarkdownBullet = { fg = c.rose },
    RenderMarkdownCode = { fg = c.bg_visual },
    RenderMarkdownDash = { fg = c.rose },
    RenderMarkdownTableHead = { fg = c.arylide },
    RenderMarkdownTableRow = { fg = c.munsell },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  }

  for i, color in ipairs(c.rainbow) do
    result["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.1) }
    result["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end

  return result
end

return M
