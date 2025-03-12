local Config = require("mountnugget.config")
local defaults = Config.defaults
local Init = require("mountnugget")

before_each(function()
  vim.cmd.colorscheme("default")
  Config.setup()
  Init.styles = {}
end)

it("did proper init", function()
  assert.same({}, Init.styles)
  assert.same("default", vim.g.colors_name)
end)

describe("loading with properties", function()
  it("should load defaults", function()
    vim.cmd.colorscheme("mountnugget")
    assert.same("mountnugget", vim.g.colors_name)
    assert.same(defaults, Config.options)
  end)

  it("should be able to overwrite defaults", function()
    Config.setup({ transparent = true, terminal_colors = false })
    vim.cmd.colorscheme("mountnugget")
    assert.same("mountnugget", vim.g.colors_name)
    local cfg = Config.defaults
    cfg.transparent = true
    cfg.terminal_colors = false

    assert.same(cfg, Config.options)
  end)

  it("should be able to overwrite styles", function()
    Config.setup({ styles = { functions = { italic = true } } })
    vim.cmd.colorscheme("mountnugget")
    assert.same("mountnugget", vim.g.colors_name)
    assert.same({
      variables = {},
      comments = { italic = true },
      keywords = { italic = true, bold = true },
      functions = { italic = true },
    }, Config.options.styles)
  end)

  it("should be able to override colors", function()
    Config.setup({
      on_colors = function(colors)
        colors.gutter_highlight = "#EE2424"
      end,
    })
    vim.cmd.colorscheme("mountnugget")
    local colors = require("mountnugget.colors").setup(Config.options)
    assert.same("#EE2424", colors.gutter_highlight)
  end)

  it("should be able to override highlights", function()
    Config.setup({
      on_highlights = function(hl, colors)
        hl.Delimiter = { fg = colors.moonstone, bold = true }
      end,
    })

    vim.cmd.colorscheme("mountnugget")
    local colors = require("mountnugget.colors").setup(Config.options)
    local highlights = require("mountnugget.groups").setup(colors, Config.options)

    assert.same({ fg = colors.moonstone, bold = true }, highlights.Delimiter)
    -- Other highlights should be intact
    assert.same({ fg = colors.vanilla }, highlights.Operator)
  end)
end)
