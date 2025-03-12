local config = require("mountnugget.config")

local M = {}

---@param opts? mountnugget.Config
function M.load(opts)
  opts = require("mountnugget.config").extend(opts)

  return require("mountnugget.theme").setup(opts)
end

M.setup = config.setup

return M
