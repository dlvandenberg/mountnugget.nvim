local M = {}

function M.get()
  local bg = C.light_blue
  local fg = C.base

  local secondary_bg = C.moonstone
  local secondary_fg = C.base

  local muted_bg = C.overlay0
  local muted_fg = C.base

  return {
    MasonHeader = { fg = fg, bg = bg, bold = true },
    MasonHeaderSecondary = { fg = secondary_fg, bg = secondary_bg, bold = true },

    MasonHighlight = { fg = C.vanilla },
    MasonHighlightBlock = {
      bg = C.vanilla,
      fg = C.base
    },
    MasonHighlightBlockBold = { bg = secondary_bg, fg = secondary_fg, bold = true },
    MasonHighlightSecondary = { fg = C.eggplant },
    MasonHighlightBlockSecondary = { bg = secondary_bg, fg = secondary_fg },
    MasonHighlightBlockBoldSecondary = { fg = fg, bg = bg, bold = true },
    MasonMuted = { fg = C.overlay0 },
    MasonMutedBlock = { bg = muted_bg, fg = muted_fg },
    MasonMutedBlockBold = { bg = C.citron, fg = C.base, bold = true },
    MasonError = { fg = C.bittersweet },
    MasonHeading = { fg = C.light_blue, bold = true },
  }
end

return M
