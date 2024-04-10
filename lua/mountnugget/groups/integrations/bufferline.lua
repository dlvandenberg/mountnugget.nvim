local M = {}

function M.get(user_config)
  user_config = user_config or {}

  return function()
    local C = require("mountnugget.colors").get_colors()
    local bg_highlight = C.peak
    local active_bg = C.base
    local inactive_bg = C.slope
    local separator_fg = C.peak
    local styles = { "bold", "italic" }

    local highlights = {
      -- buffers ──────────────────────────────────────────────────────────────────────
      background = { bg = inactive_bg },
      buffer_visible = { fg = C.surface1, bg = inactive_bg },
      buffer_selected = { fg = C.text, bg = active_bg, style = styles },

      -- Duplicate ──────────────────────────────────────────────────────────────────────
      duplicate_selected = { fg = C.text, bg = active_bg, style = styles },
      duplicate_visible = { fg = C.surface1, bg = inactive_bg, style = styles },
      duplicate = { fg = C.surface1, bg = inactive_bg, style = styles },

      -- Tabs ──────────────────────────────────────────────────────────────────────
      tab = { fg = C.surface1, bg = inactive_bg },
      tab_selected = { fg = C.sky, bg = active_bg, bold = true },
      tab_separator = { fg = separator_fg, bg = inactive_bg },
      tab_separator_selected = { fg = separator_fg, bg = active_bg },

      tab_close = { fg = C.bittersweet, bg = inactive_bg },
      indicator_selected = { fg = C.vanilla, bg = active_bg, style = styles },

      -- Separators ──────────────────────────────────────────────────────────────────────
      separator = { fg = separator_fg, bg = inactive_bg },
      separator_visible = { fg = separator_fg, bg = inactive_bg },
      separator_selected = { fg = separator_fg, bg = active_bg },
      offset_separator = { fg = separator_fg, bg = active_bg },

      -- Close buttons ──────────────────────────────────────────────────────────────────────
      close_button = { fg = C.surface1, bg = inactive_bg },
      close_button_visible = { fg = C.surface1, bg = inactive_bg },
      close_button_selected = { fg = C.bittersweet, bg = active_bg },

      -- Empty fill ──────────────────────────────────────────────────────────────────────
      fill = { bg = bg_highlight },

      -- Numbers ──────────────────────────────────────────────────────────────────────
      numbers = { fg = C.subtext0, bg = inactive_bg },
      numbers_visible = { fg = C.subtext0, bg = inactive_bg },
      numbers_selected = { fg = C.subtext0, bg = active_bg, style = styles },

      -- Errors ──────────────────────────────────────────────────────────────────────
      error = { fg = C.bittersweet, bg = inactive_bg },
      error_visible = { fg = C.bittersweet, bg = inactive_bg },
      error_selected = { fg = C.bittersweet, bg = active_bg, style = styles },
      error_diagnostic = { fg = C.bittersweet, bg = inactive_bg },
      error_diagnostic_visible = { fg = C.bittersweet, bg = inactive_bg },
      error_diagnostic_selected = { fg = C.bittersweet, bg = active_bg },

      -- Warnings ──────────────────────────────────────────────────────────────────────
      warning = { fg = C.citron, bg = inactive_bg },
      warning_visible = { fg = C.citron, bg = inactive_bg },
      warning_selected = { fg = C.citron, bg = active_bg, style = styles },
      warning_diagnostic = { fg = C.citron, bg = inactive_bg },
      warning_diagnostic_visible = { fg = C.citron, bg = inactive_bg },
      warning_diagnostic_selected = { fg = C.citron, bg = active_bg },

      -- Infos ──────────────────────────────────────────────────────────────────────
      info = { fg = C.sky, bg = inactive_bg },
      info_visible = { fg = C.sky, bg = inactive_bg },
      info_selected = { fg = C.sky, bg = active_bg, style = styles },
      info_diagnostic = { fg = C.sky, bg = inactive_bg },
      info_diagnostic_visible = { fg = C.sky, bg = inactive_bg },
      info_diagnostic_selected = { fg = C.sky, bg = active_bg },

      -- Hint ──────────────────────────────────────────────────────────────────────
      hint = { fg = C.white_smoke, bg = inactive_bg },
      hint_visible = { fg = C.white_smoke, bg = inactive_bg },
      hint_selected = { fg = C.white_smoke, bg = active_bg, style = styles },
      hint_diagnostic = { fg = C.white_smoke, bg = inactive_bg },
      hint_diagnostic_visible = { fg = C.white_smoke, bg = inactive_bg },
      hint_diagnostic_selected = { fg = C.white_smoke, bg = active_bg },

      -- Diagnostics ──────────────────────────────────────────────────────────────────────
      diagnostic = { fg = C.subtext0, bg = inactive_bg },
      diagnostic_visible = { fg = C.subtext0, bg = inactive_bg },
      diagnostic_selected = { fg = C.subtext0, bg = active_bg, style = styles },

      -- Modified ──────────────────────────────────────────────────────────────────────
      modified = { fg = C.pink, bg = inactive_bg },
      modified_selected = { fg = C.pink, bg = active_bg },
    }

    for _, color in pairs(highlights) do
      -- because default = gui=bold,italic
      color.italic = false
      color.bold = false

      if color.style then
        for _, style in pairs(color.style) do
          color[style] = true
        end
      end
      color.style = nil
    end

    return highlights
  end
end

return M
