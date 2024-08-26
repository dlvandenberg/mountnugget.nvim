---@class mountnugget.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias mountnugget.Highlights table<string, mountnugget.Highlight|string>

---@alias mountnugget.HighlightsFn fun(colors: ColorScheme, opts: mountnugget.Config): mountnugget.Highlights
