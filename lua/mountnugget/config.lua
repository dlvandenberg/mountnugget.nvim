-- ╭─────────────────────────────────────────────────────────╮
-- │ Config                                                  │
-- ╰─────────────────────────────────────────────────────────╯
---@class HighlightDefinition
---@field fg string?
---@field bg string?

---@class MntNgtIntegrations
---@field dap boolean?
---@field dap_ui boolean?
---@field gitsigns boolean?
---@field lazygit boolean?
---@field markdown boolean?
---@field mason boolean?
---@field neotest boolean?
---@field nvimtree boolean?
---@field telescope boolean?
---@field treesitter boolean?
---@field which_key boolean?

---@class MountNuggetConfig
---@field overrides table<string, HighlightDefinition>?
---@field palette_overrides table<string, string>?
---@field integrations MntNgtIntegrations?
local default_config = {
  overrides = {},
  palette_overrides = {},
  integrations = {},
}

return default_config
