local palette = require("mountnugget.palette")
local config = require("mountnugget.config")

---@class MountNugget
---@field config MountNuggetConfig
---@field palette MountNuggetPalette
local MountNugget = {}

MountNugget.config = config
MountNugget.palette = palette

-- ╭─────────────────────────────────────────────────────────╮
-- │ Setup                                                   │
-- ╰─────────────────────────────────────────────────────────╯
---@param config MountNuggetConfig?
MountNugget.setup = function(config)
  MountNugget.config = vim.tbl_deep_extend("force", MountNugget.config, config or {})
end

-- ╭─────────────────────────────────────────────────────────╮
-- │ Load                                                    │
-- ╰─────────────────────────────────────────────────────────╯
MountNugget.load = function()
  if vim.version().minor < 8 then
    vim.notify_once("mountnugget.nvim: You must use Neovim 0.8 or higher.")
    return
  end

  -- Reset colors ──────────────────────────────────────────────────────────────────────
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end
  vim.g.colors_name = "mountnugget"
  vim.o.termguicolors = true

  -- Load colorgroups ──────────────────────────────────────────────────────────────────────
  local groups = require("mountnugget.groups").apply()
  local table = vim.tbl_deep_extend("keep", groups.editor, groups.syntax, groups.integrations);

  -- Add highlights ──────────────────────────────────────────────────────────────────────
  for group, settings in pairs(table) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Add terminal highlights ───────────────────────────────────────────────────────────────
  for key, value in pairs(groups.terminal) do
    vim.g[key] = value
  end
end

return MountNugget
