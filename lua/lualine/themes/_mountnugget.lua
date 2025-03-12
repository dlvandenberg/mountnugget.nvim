local M = {}

function M.get()
  local colors = require("mountnugget.colors").setup()

  local hl = {}

  hl.normal = {
    a = { bg = colors.moonstone, fg = colors.black, gui = "bold" },
    b = { bg = colors.surface_1, fg = colors.moonstone },
    c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
  }

  hl.insert = {
    a = { bg = colors.vanilla, fg = colors.black, gui = "bold" },
    b = { bg = colors.surface_1, fg = colors.vanilla },
  }

  hl.command = {
    a = { bg = colors.pink, fg = colors.black, gui = "bold" },
    b = { bg = colors.surface_1, fg = colors.pink },
  }

  hl.visual = {
    a = { bg = colors.eggplant, fg = colors.black, gui = "bold" },
    b = { bg = colors.surface_1, fg = colors.eggplant },
  }

  hl.replace = {
    a = { bg = colors.error, fg = colors.black, gui = "bold" },
    b = { bg = colors.surface_1, fg = colors.error },
  }

  hl.terminal = {
    a = { bg = colors.timberwolf, fg = colors.black, gui = "bold" },
    b = { bg = colors.surface_1, fg = colors.timberwolf },
  }

  hl.inactive = {
    a = { bg = colors.bg_statusline, fg = colors.moonstone },
    b = { bg = colors.bg_statusline, fg = colors.fg_sidebar, gui = "bold" },
    c = { bg = colors.bg_statusline, fg = colors.fg_float },
  }

  return hl
end

return M
