local M = {}

function M.get()
  return {
    ColorColumn = { bg = C.surface0 }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = C.overlay1 }, -- placeholder characters substituted for concealed text
    Cursor = { fg = C.base, bg = C.text }, -- character under the cursor
    lCursor = { fg = C.base, bg = C.text }, -- character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = C.base, bg = C.text }, -- Like Cursor, but used when in IME Mode |CursorIM|
    CursorLine = { bg = C.surface1 }, -- Screen-line at the cursor
    CursorColumn = { link = "CursorLine" }, -- Screen-column at the cursor
    Directory = { fg = C.blue }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = C.base }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = C.bittersweet, bold = true }, -- error messages on the command line
    VertSplit = { fg = C.sand }, -- the column separating vertically split windows
    Folded = { fg = C.blue, bg = C.surface1 }, -- line used for closed folds
    FoldColumn = { fg = C.overlay0 }, -- 'foldcolumn'
    SignColumn = { fg = C.surface1 }, -- column where |signs| are displayed
    SignColumnSB = { bg = C.slope, fg = C.surface1 }, -- column where |signs| are displayed
    Substitute = { bg = C.surface1, fg = C.gold1 }, -- |:substitute| replacement text highlighting
    LineNr = { fg = C.sand }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = C.ash_grey }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = C.gold, bg = C.overlay1, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = C.sand, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = C.moonstone }, -- |more-prompt|
    NonText = { fg = C.overlay0 }, -- '@' at the end of the window
    Normal = { fg = C.text, bg = C.base }, -- normal text
    NormalNC = { fg = C.text, bg = C.base }, -- normal text in non-current windows
    NormalSB = { fg = C.text, bg = C.base }, -- normal text in non-current windows
    NormalFloat = { fg = C.text, bg = C.slope }, -- normal text in floating windows
    FloatBorder = { fg = C.vanilla },
    FloatTitle = { fg = C.subtext }, -- title in floating windows
    Pmenu = { bg = C.peak, fg = C.vanilla }, -- Popup menu: normal item.
    PmenuSel = { bg = C.surface1, fg = C.sand1, bold = true }, -- Popup menu: selected item.
    PmenuSBar = { bg = C.surface1 }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = C.overlay0 }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = C.moonstone }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = C.surface1, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = C.sky, fg = C.text }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { bg = C.moonstone, fg = C.slope }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { bg = C.gold, fg = C.slope }, -- Last search pattern highlighting with cursor on top.
    SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.
    StatusLine = { fg = C.text, bg = C.peak }, -- status line of current window
    StatusLineNC = { fg = C.surface1, bg = C.peak }, -- status line of not-current windows
    TabLine = { bg = C.peak, fg = C.surface1 }, -- tab pages line, not active tab page label
    TabLineFill = {}, -- tab pages line, where there are no labels
    TabLineSel = { fg = C.gold, bg = C.surface1 }, -- tab pages line, active tabe page label
    Title = { fg = C.citron, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = C.overlay0, bold = true },
    VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not owning the selection",
    WarningMsg = { fg = C.gold }, -- warning messages
    Whitespace = { fg = C.surface1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = C.overlay0 }, -- current match in 'wildmenu' completion
    WinBar = { fg = C.gold },
    WinBarNC = { link = "WinBar" },
    WinSeparator = { fg = C.slope },

    -- SpellBad
    -- SpellCap
    -- SpellLocal
    -- SpellRare

    -- Diagnostics ──────────────────────────────────────────────────────────────────────
    DiagnosticError = { link = "ErrorMsg" },
    DiagnosticWarn = { link = "WarningMsg" },
    DiagnosticInfo = { fg = C.light_blue },
    DiagnosticHint = { fg = C.platinum },
  }
end

return M
