local M = {}

function M.get()
  return {
    Comment = { fg = C.comment }, -- comments
    SpecialComment = { link = "Special" }, -- special things inside comments
    Constant = { fg = C.moonstone }, -- (preferred) any constant
    String = { fg = C.vanilla }, -- a string constant
    Character = { fg = C.eggplant }, -- a character constant: 'c', '\n'
    Number = { fg = C.rose }, -- a number constant: 234, 0xff
    Float = { link = "number" }, -- a floating point constant: 2.3e10
    Boolean = { fg = C.moonstone }, -- a boolean constant: TRUE, false
    Identifier = { fg = C.white_smoke }, -- (preferred) any variable name
    Function = { fg = C.ash_grey }, -- function name (also: methods for classes)
    Statement = { fg = C.timberwolf }, -- any statement
    Conditional = { link = "Statement" }, -- if, then, else, endif, switch, etc.
    Repeat = { link = "Statement" }, -- for, do, while, etc.
    Label = { fg = C.moonstone }, -- case, default, etc.
    Operator = { fg = C.gold }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = C.battleship_grey, bold = true }, -- any other keyword
    Exception = { fg = C.battleship_grey, bold = true }, -- try, catch, throw

    PreProc = { fg = C.moonstone }, -- generic Preprocessor
    Include = { fg = C.mountbatten }, -- preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { link = "PreProc" }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    StorageClass = { fg = C.citron }, -- static, register, volatile, etc.
    Structure = { fg = C.citron }, -- struct, union, enum, etc.
    Special = { fg = C.vanilla }, -- any special symbol
    Type = { fg = C.citron, bold = true }, -- int, long, char, etc.
    Typedef = { link = "Type" }, -- A typedef
    SpecialChar = { link = "Special" }, -- special character in a constant
    Tag = { fg = C.light_blue, bold = true }, -- you can use CTRL-] on this
    Delimiter = { fg = C.gold }, -- character that needs attention like
    Debug = { link = "Special" }, -- debugging statements

    -- Underlined = { "underline" = true }, -- text that stands out, HTML links
    -- Bold = { "bold" = true },
    -- Italic = { "italic" = true},

    Error = { fg = C.bittersweet }, -- any erroneous construct
    Todo = { bg = C.eggplant, fg = C.sand }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr = { fg = C.citron },
    qfFileName = { fg = C.moonstone },

    htmlH1 = { fg = C.ash_grey, bold = true },
    htmlH2 = { fg = C.khaki, bold = true },

    mkdCodeDelimiter = { bg = C.base, fg = C.text },
    mkdCodeStart = { fg = C.timberwolf, bold = true },
    mkdCodeEnd = { fg = C.timberwolf, bold = true },

    debugPC = { bg = C.slope },
    debugBreakpoint = { bg = C.base, fg = C.overlay0 },

    -- Illuminate
    illuminateWord = { bg = C.surface1 },
    illuminateCurWord = { bg = C.surface1 },

    -- Diff
    diffAdded = { fg = C.asparagus },
    diffRemoved = { fg = C.bittersweet },
    diffChanged = { fg = C.moonstone },
    diffOldFile = { fg = C.citron },
    diffNewFile = { fg = C.vanilla },
    diffFile = { fg = C.moonstone },
    diffLine = { fg = C.overlay0 },
    diffIndexLine = { fg = C.light_blue },
    DiffAdd = { bg = C.base_green },
    DiffChange = { bg = C.base_blue },
    DiffDelete = { bg = C.base_red },
    DiffText = { bg = C.base },

    -- Neovim
    healthError = { fg = C.bittersweet },
    healthSuccess = { fg = C.asparagus },
    healthWarning = { fg = C.citron },

    -- rainbow
    rainbow1 = { fg = C.vanilla },
    rainbow2 = { fg = C.light_blue },
    rainbow3 = { fg = C.pink },
    rainbow4 = { fg = C.citron },
    rainbow5 = { fg = C.moonstone },
    rainbow6 = { fg = C.mountbatten },
  }
end

return M
