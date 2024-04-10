local config = require("mountnugget.config")
local palette = require("mountnugget.palette")
local colors = {}

-- ╭─────────────────────────────────────────────────────────╮
-- │ Get colors                                              │
-- ╰─────────────────────────────────────────────────────────╯
--- Get a list of colors in hex format.
colors.get_colors = function()
  local P = palette
  local C = config

  -- Override hex codes ──────────────────────────────────────────────────────────────────────
  for color, hex in pairs(C.palette_overrides) do
    P[color] = hex
  end

  return {
    base = P.purple_70,

    slope = P.purple_80, -- mantle
    peak = P.purple_90, -- crust
 
    surface0 = P.purple_60,
    surface1 = P.purple_50,
    surface2 = P.purple_40,

    overlay0 = P.purple_30,
    overlay1 = P.purple_20,
    overlay2 = P.purple_10,

    text = P.white_10,
    subtext0 = P.white_20,
    subtext1 = P.white_30,

    comment = P.white_60,

    cursor = P.sand_30,

    blue = P.blue_30,
    blue1 = P.blue_10,
    blue2 = P.blue_20,
    blue3 = P.blue_30,
    blue4 = P.blue_40,
    blue5 = P.blue_50,
    blue6 = P.blue_60,

    green = P.green_30,

    red = P.red_30,
    red4 = P.red_10,

    gold1 = P.gold_10,
    gold2 = P.gold_20,
    gold3 = P.gold_30,
    gold4 = P.gold_40,
    gold5 = P.gold_50,
    gold6 = P.gold_60,
    gold7 = P.gold_70,

    sand = P.sand_40,
    sand1 = P.sand_10,
    sand2 = P.sand_20,
    sand3 = P.sand_30,
    sand4 = P.sand_40,
    sand5 = P.sand_50,
    sand6 = P.sand_60,
    sand7 = P.sand_70,
    sand8 = P.sand_80,

    -- Sand colors ──────────────────────────────────────────────────────────────────────
    timberwolf = P.sand_10, -- sand (catp flamingo)
    ash_grey = P.sand_30, -- grey
    khaki = P.sand_50, -- darker
    battleship_grey = P.sand_80, -- dark-grey

    -- Blue colors ──────────────────────────────────────────────────────────────────────
    light_blue = P.blue_10, -- light-blue (catp lavender)
    sky = P.blue_20, -- light-blue (catp sky)
    moonstone = P.blue_40, -- blue (catp blue)

    -- White/grey colors ──────────────────────────────────────────────────────────────────────
    white_smoke = P.white_70, -- light-grey-white
    platinum = P.sand_01, -- light-sand
    silver = P.silver_10, -- white

    -- Purple-ish colors ──────────────────────────────────────────────────────────────────────
    rose = P.pink_05, --light pink
    pink = P.pink_10, -- pink (catp peach)
    mountbatten = P.purple_02, -- pink/purple
    eggplant = P.purple_01, -- purple (catp mauve)

    -- Goldish colors ──────────────────────────────────────────────────────────────────────
    vanilla = P.gold_01, -- light-sand (catp pink)
    citron = P.gold_04, -- gold/sand (catp yellow)
    old_gold = P.gold_08, -- dark/gold
    gold = P.gold_03, -- bright gold

    -- Red colors ──────────────────────────────────────────────────────────────────────
    bittersweet = P.red_30, -- red (catp red)
    persian = P.red_80, -- dark-red (catp maroon)

    -- Green colors ──────────────────────────────────────────────────────────────────────
    asparagus = P.green_35,

    -- mixed
    base_green = "#353B2D",
    base_red = "#522E32",
    base_blue = "#333C44",
  }
end

return colors
