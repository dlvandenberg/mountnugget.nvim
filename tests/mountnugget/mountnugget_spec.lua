require("plenary.reload").reload_module("mountnugget", true)

local mountnugget = require("mountnugget")
local default = mountnugget.config

local function clear_term_colors()
  for item = 0, 15 do
    vim.g["terminal_color" .. item] = nil
  end
end

describe("mountnugget", function()
  it("should have default config values", function()
    mountnugget.setup()
    assert.are.same(mountnugget.config, default)
  end)

  it("should be able to override integrations", function()
    local expected = {
      overrides = {},
      palette_overrides = {},
      integrations = {
        telescope = true,
        treesitter = true,
      },
    }

    mountnugget.setup({
      integrations = {
        telescope = true,
        treesitter = true,
      },
    })

    assert.are.same(mountnugget.config, expected)
  end)
end)
