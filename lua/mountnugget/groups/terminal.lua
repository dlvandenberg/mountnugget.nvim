local M = {}

function M.get()
  return {
    terminal_color_0 = C.overlay0,
    terminal_color_8 = C.overlay1,

    terminal_color_1 = C.bittersweet,
    terminal_color_9 = C.bittersweet,

    terminal_color_2 = C.asparagus,
    terminal_color_10 = C.asparagus,

    terminal_color_3 = C.citron,
    terminal_color_11 = C.citron,

    terminal_color_4 = C.moonstone,
    terminal_color_12 = C.moonstone,

    terminal_color_5 = C.vanilla,
    terminal_color_13 = C.vanilla,

    terminal_color_6 = C.eggplant,
    terminal_color_14 = C.eggplant,

    terminal_color_7 = C.text,
    terminal_color_15 = C.text,
  }
end

return M
