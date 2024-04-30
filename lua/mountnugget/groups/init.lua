local M = {}

function M.apply()
  local _O, _C = O, C

  O = require("mountnugget").config
  C = require("mountnugget.colors").get_colors()

  -- ╭─────────────────────────────────────────────────────────╮
  -- │ Setup theme                                             │
  -- ╰─────────────────────────────────────────────────────────╯
  local theme = {}

  theme.editor = require("mountnugget.groups.editor").get()
  theme.syntax = require("mountnugget.groups.syntax").get()
  theme.terminal = require("mountnugget.groups.terminal").get()

  local final_integrations = {}

  -- Integrations ──────────────────────────────────────────────────────────────────────
  for integration in pairs(O.integrations) do
    local integrate = false
    if type(O.integrations[integration]) == "table" then
      if O.integrations[integration].enabled == true then
        integrate = true
      end
    elseif O.integrations[integration] == true then
      -- what do i do here?
      integrate = true
    end

    if integrate then
      final_integrations = vim.tbl_deep_extend(
        "force",
        final_integrations,
        require("mountnugget.groups.integrations." .. integration).get()
      )
    end
  end

  theme.integrations = final_integrations

  O, C = _O, _C
  return theme
end

return M
