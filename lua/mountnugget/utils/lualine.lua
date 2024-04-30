return function()
  local C = require("mountnugget.colors").get_colors()

  local mountnugget = {}

  mountnugget.normal = {
    a = { bg = C.moonstone, fg = C.slope, gui = "bold" },
    b = { bg = C.surface0, fg = C.moonstone },
    c = { bg = C.slope, fg = C.text },
  }

  mountnugget.insert = {
    a = { bg = C.vanilla, fg = C.base, gui = "bold" },
    b = { bg = C.surface0, fg = C.vanilla },
  }

  mountnugget.terminal = {
    a = { bg = C.vanilla, fg = C.base, gui = "bold" },
    b = { bg = C.surface0, fg = C.vanilla },
  }

  mountnugget.command = {
    a = { bg = C.pink, fg = C.base, gui = "bold" },
    b = { bg = C.surface0, fg = C.pink },
  }

  mountnugget.visual = {
    a = { bg = C.eggplant, fg = C.base, gui = "bold" },
    b = { bg = C.surface0, fg = C.eggplant },
  }

  mountnugget.replace = {
    a = { bg = C.bittersweet, fg = C.base, gui = "bold" },
    b = { bg = C.surface0, fg = C.bittersweet },
  }

  mountnugget.inactive = {
    a = { bg = C.slope, fg = C.moonstone },
    b = { bg = C.slope, fg = C.surface1, gui = "bold" },
    c = { bg = C.slope, fg = C.overlay0 },
  }

  return mountnugget
end
