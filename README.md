<div align="center">
    <h3>
        MountNugget for <a href="https://neovim.io/">Neovim</a>
    </h3>
    <h5>This is the official Neovim Theme for <a href="https://vdberg.dev">my portfolio</a>.</h5>
    <img src="https://i.imgur.com/Sslr1YR.jpeg" title="Neovim MountNugget colorscheme" style="width: 100%; max-width: 700px; text-align: center;"/>
</div>

## Features

- Integrations with Treesitter, Telescope and many other plugins

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "dlvandenberg/mountnugget.nvim", name = "mountnugget", priority = 1000 }
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "dlvandenberg/mountnugget.nvim", as = "mountnugget" }
```

## Usage

```lua
colorscheme mountnugget
```

```lua
vim.cmd.colorscheme "mountnugget"
```

## Configuration

Below you'll find the default configuration, which can be altered to your liking:

```lua
require("mountnugget").setup({
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true, bold = true },
    functions = {},
    variables = {},
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses lazy.nvim to load plugins automatically
    auto = true,
    -- add any plugins here that you want to enable
  },
})
```

## Overrides

### Color Palette

You can override the color palette by using the `on_colors` function:

```lua
require("mountnugget").setup({
    on_colors = function(colors)
        colors.gutter_highlight = "#EE2424"
    end,
})
```

### Highlight groups

If you do not like the current color for a specific highlight group, you can override it in the setup:

```lua
require("mountnugget").setup({
    on_highlights = function(highlight, colors)
        ColorColumn = { fg = "#ff0000", bg = colors.bg },
        ["@variable.builtin"] = { fg = "#ff0000" },
    end,
})
```

## Supported Plugins

Below is a list of supported integrations.

- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [neotest](https://github.com/nvim-neotest/neotest)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Extras

| Tool                                                        | Extra                                       |
| ----------------------------------------------------------- | ------------------------------------------- |
| [Bat](https://github.com/sharkdp/bat)                       | [extras/bat](extras/fzf)                    |
| [Colorls](https://github.com/athityakumar/colorls)          | [extras/colorls](extras/colorls.yaml)       |
| [Fzf](https://github.com/junegunn/fzf)                      | [extras/fzf](extras/fzf.sh)                 |
| [iTerm2](https://iterm2.com/)                               | [extras/iterm2](extras/iterm2.itermcolors)  |
| [Lazygit](https://github.com/jesseduffield/lazygit)         | [extras/lazygit](extras/lazygit.yml)        |
| [Oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh)  | [extras/oh-my-posh](extras/oh-my-posh.toml) |
| [WezTerm](https://wezfurlong.org/wezterm/config/files.html) | [extras/wezterm](extras/wezterm.toml)       |

## Other themes

- [MountNugget.tmux](https://github.com/dlvandenberg/mountnugget.tmux)

## Credits

The setup of this theme is heavily inspired by the following themes:

- [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- [Catppuccin](https://github.com/catppuccin/nvim)
- [TokyoNight](https://github.com/folke/tokyonight.nvim)
