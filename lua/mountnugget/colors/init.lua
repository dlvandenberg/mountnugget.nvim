local Util = require("mountnugget.util")
local M = {}

---@param opts? mountnugget.Config
---@return ColorScheme, mountnugget.Config
function M.setup(opts)
  opts = require("mountnugget.config").extend(opts)

  local palette = require("mountnugget.colors.palette")

  ---@class ColorScheme: Palette
  local colors = {}
  colors.none = "NONE"
  colors.fg = palette.grey_4
  colors.bg = palette.purple_2

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.bg_highlight = palette.purple_5

  colors.surface_0 = palette.purple_3
  colors.surface_1 = palette.purple_4
  colors.surface_2 = palette.purple_5

  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")

  colors.bg_sidebar = opts.styles.sidebar == "transparent" and colors.none or palette.purple_1
  colors.bg_float = opts.styles.floats == "transparent" and colors.none or palette.purple_1
  colors.bg_popup = palette.purple_0
  colors.bg_statusline = palette.purple_0
  colors.border = palette.purple_8
  colors.border_highlight = palette.grey_3

  colors.bg_visual = palette.purple_5
  colors.bg_search = palette.pink_1

  colors.fg_gutter = palette.pink_0
  colors.fg_sidebar = palette.grey_2
  colors.fg_float = colors.fg

  colors.comment = palette.purple_8

  colors.gutter_highlight = palette.pink_2

  colors.old_gold = palette.gold_0
  colors.citrine = palette.gold_1
  colors.arylide = palette.gold_2
  colors.flax = palette.gold_3
  colors.vanilla = palette.gold_4

  colors.satin = palette.yellow_0
  colors.gold = palette.yellow_1
  colors.citron = palette.yellow_3

  colors.battleship = palette.grey_0
  colors.khaki = palette.grey_1
  colors.ash = palette.grey_2
  colors.timberwolf = palette.grey_3
  colors.platinum = palette.grey_4

  colors.persian = palette.red_0
  colors.indian = palette.red_3
  colors.asparagus = palette.green_0
  colors.pistachio = palette.green_2

  -- Blue ──────────────────────────────────────────────────────────────────────
  colors.teal = palette.blue_0
  colors.munsell = palette.blue_1
  colors.moonstone = palette.blue_2
  colors.sky = palette.blue_3
  colors.light_blue = palette.blue_4

  -- Pink ──────────────────────────────────────────────────────────────────────
  colors.eggplant = palette.pink_0
  colors.mountbatten = palette.pink_1
  colors.pink = palette.pink_2
  colors.rose = palette.pink_3

  colors.diff = {
    add = Util.blend_bg(palette.green_0, 0.15),
    delete = Util.blend_bg(palette.red_0, 0.15),
    change = Util.blend_bg(palette.blue_1, 0.15),
    text = palette.grey_3,
  }

  colors.git = {
    add = palette.green_0,
    change = palette.blue_0,
    delete = palette.red_0,
    ignore = palette.purple_8,
  }

  --diagnostics
  colors.error = palette.red_0
  colors.todo = palette.blue_1
  colors.warning = palette.gold_2
  colors.info = palette.blue_3
  colors.hint = palette.blue_0

  colors.rainbow = {
    colors.vanilla,
    colors.light_blue,
    colors.pink,
    colors.citron,
    colors.moonstone,
    colors.mountbatten,
  }

  -- Apply overrides
  opts.on_colors(colors)

  return colors, opts
end

return M
