local Config = require("mountnugget.config")
local Groups = require("mountnugget.groups")

local base = { "base", "kinds", "semantic_tokens", "treesitter" }

before_each(function()
  Config.setup()
end)

describe("group is valid", function()
  for name in vim.fs.dir("lua/mountnugget/groups") do
    name = name:match("(.+)%.lua$")
    if name and name ~= "init" and not vim.list_contains(base, name) then
      it(name .. " has a plugin mapping", function()
        local mapping = false
        for _, v in pairs(Groups.plugins) do
          if v == name then
            mapping = true
            break
          end
        end

        assert.is_true(mapping)
      end)
    end
  end

  for _, name in pairs(Groups.plugins) do
    it(name .. " exists", function()
      local ok = pcall(Groups.get_group, name)
      assert(ok, name)
    end)
  end
end)

describe("group config", function()
  it("loads all", function()
    local opts = Config.extend({ plugins = { all = true } })
    local all = {} ---@type table<string, boolean>

    for _, name in ipairs(base) do
      all[name] = true
    end

    for _, name in pairs(Groups.plugins) do
      all[name] = true
    end

    local colors = require("mountnugget.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)

    assert.same(all, groups)
  end)

  it("loads base", function()
    local opts = Config.extend({ plugins = { all = false, auto = false } })
    local all = {} ---@type table<string, boolean>

    for _, name in ipairs(base) do
      all[name] = true
    end

    local colors = require("mountnugget.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)

    assert.same(all, groups)
  end)

  it("loads telescope", function()
    local opts = Config.extend({ plugins = {
      all = false,
      auto = false,
      telescope = true,
    } })
    local all = {} ---@type table<string, boolean>

    for _, name in ipairs(base) do
      all[name] = true
    end

    all.telescope = true

    local colors = require("mountnugget.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)

    assert.same(all, groups)
  end)

  it("loads telescope.nvim", function()
    local opts = Config.extend({
      plugins = {
        all = false,
        auto = false,
        ["telescope.nvim"] = true,
      },
    })
    local all = {} ---@type table<string, boolean>

    for _, name in ipairs(base) do
      all[name] = true
    end

    all.telescope = true

    local colors = require("mountnugget.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)

    assert.same(all, groups)
  end)
end)
