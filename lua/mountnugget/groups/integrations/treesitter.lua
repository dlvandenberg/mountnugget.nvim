local M = {}

function M.get()
  return {
    -- Identifiers ──────────────────────────────────────────────────────────────────────
    ["@variable"] = { fg = C.white_smoke }, -- Any variable name that does not have another highlight
    ["@variable.builtin"] = { fg = C.moonstone }, -- Variables that are defined by the language, like 'this' and 'self'
    ["@variable.parameter"] = { fg = C.sky }, -- For parameters in a function
    ["@variable.member"] = { fg = C.light_blue }, -- For fields

    ["@constant"] = { link = "Constant" }, -- For constants
    ["@constant.builtin"] = { fg = C.pink }, -- For constants that are builtin in the language ('nil')
    ["@constant.macro"] = { link = "Macro" },

    ["@module"] = { fg = C.light_blue, italic = true }, -- For identifiers referring to modules and namespaces
    ["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.

    -- Literals ──────────────────────────────────────────────────────────────────────
    ["@string"] = { link = "String" }, -- For strings
    ["@string.regexp"] = { fg = C.vanilla }, -- For regexes
    ["@string.escape"] = { fg = C.rose }, -- For escape characters with a string
    ["@string.special"] = { link = "Special" }, -- other special strings
    ["@string.special.symbol"] = { fg = C.timberwolf }, -- special symbols in a string
    ["@string.special.url"] = { fg = C.light_blue, underline = true, italic = true }, -- urls, links and emails

    ["@character"] = { link = "Character" }, -- character literals
    ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

    ["@boolean"] = { link = "Boolean" }, -- For booleans.
    ["@number"] = { link = "Number" }, -- For integers
    ["@number.float"] = { link = "Float" }, -- For floats

    -- Types ──────────────────────────────────────────────────────────────────────
    ["@type"] = { link = "Type"}, -- For types
    ["@type.builtin"] = { fg = C.light_blue, bold = true }, -- For builtin types
    ["@type.definition"] = { link = "Type" }, -- For type definitions
    ["@type.quantifier"] = { link = "Keyword" }, -- type quantifiers like 'const'

    ["@attribute"] = { link = "Constant" }, -- attribute annotations
    ["@property"] = { fg = C.light_blue }, -- attributes

    -- Functions ──────────────────────────────────────────────────────────────────────
    ["@function"] = { link = "Function" }, -- For function (calls and definitions)
    ["@function.builtin"] = { fg = C.pink, bold = true }, -- For builtin functions
    ["@function.call"] = { link = "Function" }, -- For function calls
    ["@function.macro"] = { link = "Macro" }, -- For macro defined functions
    ["@function.method"] = { link = "Function" }, -- For method definitions
    ["@function.method.call"] = { link = "Function" }, -- for method calls

    ["@constructor"] = { fg = C.sky }, -- For constructor calls and definitions
    ["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C

    -- Keywords ──────────────────────────────────────────────────────────────────────
    ["@keyword"] = { link = "Keyword" }, -- For keywords that dont fall in other categories
    ["@keyword.function"] = { fg = C.khaki }, -- For keywords used to define a function
    ["@keyword.operator"] = { fg = C.mountbatten }, -- For new keyword operator
    ["@keyword.import"] = { link = "Include" }, -- for includes and import statements
    ["@keyword.storage"] = { link = "StorageClass" }, -- for visibility modifiers like 'static'
    ["@keyword.repeat"] = { link = "Repeat" }, -- For keywords related to loops
    ["@keyword.return"] = { fg = C.rose, bold = true }, -- For return keywords
    ["@keyword.exception"] = { link = "Exception" }, -- For exception related keywords
    ["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionals
    ["@keyword.directive"] = { link = "PreProc" }, -- Various preprocessor directives and shebangs
    ["@keyword.directive.define"] = { link = "Define" }, -- Preprocessor definition directives
    ["@keyword.export"] = { fg = C.ash_grey, bold = true }, -- Export keyword

    -- Punctuation ──────────────────────────────────────────────────────────────────────
    ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters like ';', '.', ','
    ["@punctuation.bracket"] = { fg = C.mountbatten }, -- Brackets and parenthesis
    ["@punctuation.special"] = { link = "Special" }, -- Special punctuations like '{}' in string interpolation

    -- Comment ──────────────────────────────────────────────────────────────────────
    ["@comment"] = { link = "Comment" },
    ["@comment.error"] = { fg = C.base, bg = C.bittersweet },
    ["@comment.warning"] = { fg = C.base, bg = C.citron },
    ["@comment.hint"] = { fg = C.base, bg = C.moonstone },
    ["@comment.todo"] = { fg = C.base, bg = C.timberwolf },

    -- Markup ──────────────────────────────────────────────────────────────────────
    ["@markup"] = { fg = C.text }, -- For string considered text in a markup language
    ["@markup.strong"] = { fg = C.moonstone, bold = true }, -- bold
    ["@markup.italic"] = { fg = C.rose, italic = true }, -- italic
    ["@markup.strikethrough"] = { fg = C.text, strikethrough = true }, -- strikethrough text
    ["@markup.underline"] = { link = "Underlined" }, -- underlined text
    ["@markup.heading"] = { fg = C.citron }, -- titles like # example

    ["@markup.math"] = { fg = C.moonstone }, -- math environments
    ["@markup.environment"] = { fg = C.vanilla }, -- text environments of markup languages
    ["@markup.environment.name"] = { fg = C.moonstone }, -- text indicating the type of environment

    ["@markup.link"] = { link = "Tag" }, -- text references, footnotes, links
    ["@markup.link.url"] = { fg = C.rose, italic = true, underline = true }, -- urls, links and emails
    ["@markup.raw"] = { fg = C.rose }, -- raw text

    ["@markup.list"] = { link = "Special" }, -- list
    ["@markup.list.checked"] = { fg = C.asparagus }, -- todo notes
    ["@markup.list.unchecked"] = { fg = C.overlay1 }, -- todo notes

    -- Diff ──────────────────────────────────────────────────────────────────────
    ["@diff.plus"] = { link = "diffAdded" }, -- added text for diff
    ["@diff.minus"] = { link = "diffRemoved" }, -- added text for diff
    ["@diff.delta"] = { link = "diffChanged" }, -- added text for diff

    -- Tags ──────────────────────────────────────────────────────────────────────
    ["@tag"] = { fg = C.vanilla }, -- Tags like html tag name
    ["@tag.attribute"] = { fg = C.ash_grey }, -- Tag attributes
    ["@tag.delimiter"] = { fg = C.mountbatten }, -- Tag delimiter like <, > and </ /

    -- Misc ──────────────────────────────────────────────────────────────────────
    ["@error"] = { link = "Error" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Language specifics                                                         │
    -- ╰─────────────────────────────────────────────────────────╯
    -- Bash ──────────────────────────────────────────────────────────────────────
    ["@function.builtin.bash"] = { fg = C.pink, bold = true },

    -- Markdown ──────────────────────────────────────────────────────────────────────
    ["@markup.heading.1.markdown"] = { link = "rainbow1" },
    ["@markup.heading.2.markdown"] = { link = "rainbow2" },
    ["@markup.heading.3.markdown"] = { link = "rainbow3" },
    ["@markup.heading.4.markdown"] = { link = "rainbow4" },
    ["@markup.heading.5.markdown"] = { link = "rainbow5" },
    ["@markup.heading.6.markdown"] = { link = "rainbow6" },

    -- Java ──────────────────────────────────────────────────────────────────────
    ["@constant.java"] = { fg = C.pink },

    -- CSS ──────────────────────────────────────────────────────────────────────
    ["@property.css"] = { fg = C.light_blue },
    ["@property.id.css"] = { fg = C.moonstone },
    ["@property.class.css"] = { fg = C.citron },
    ["@type.css"] = { fg = C.light_blue },
    ["@type.tag.css"] = { fg = C.mountbatten },
    ["@string.plain.css"] = { fg = C.pink },
    ["@number.css"] = { fg = C.pink },

    -- JSON ──────────────────────────────────────────────────────────────────────
    ["@label.json"] = { fg = C.moonstone },

    -- Lua ──────────────────────────────────────────────────────────────────────
    ["@constructor.lua"] = { fg = C.timberwolf },

    -- TypeScript ──────────────────────────────────────────────────────────────────────
    ["@property.typescript"] = { fg = C.light_blue },
    ["@constructor.typescript"] = { fg = C.light_blue },

    -- TSX ──────────────────────────────────────────────────────────────────────
    ["@constructor.tsx"] = { fg = C.light_blue },
    ["@tag.attribute.tsx"] = { fg = C.pink },

    -- YAML ──────────────────────────────────────────────────────────────────────
    ["@variable.member.yaml"] = { fg = C.moonstone },

    -- C/CPP ──────────────────────────────────────────────────────────────────────
    ["@type.builtin.c"] = { fg = C.citron },
    ["@property.cpp"] = { fg = C.text },
    ["@type.builtin.cpp"] = { fg = C.citron },

    -- Gitcommit ──────────────────────────────────────────────────────────────────────
    ["@comment.warning.gitcommit"] = { fg = C.citron },

    -- Angular ──────────────────────────────────────────────────────────────────────
    ["@keyword.conditional.angular"] = { bold = true },
    ["@keyword.repeat.angular"] = { bold = true },
    ["@punctuation.special.angular"] = { fg = C.text },
  }
end

return M
