<div align="center">
    <h3>
        MountNugget for <a href="https://neovim.io/">Neovim</a>
    </h3>
    <h5>This is the official Neovim Theme for <a href="https://vdberg.dev">my portfolio</a>.</h5>
    <img src="https://imgur.com/FkTQVE8.png" title="Neovim MountNugget colorscheme" style="width: 100%; max-width: 700px; text-align: center;"/>
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

```lua
require("mountnugget").setup({
    color_overrides = {},
    overrides = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        dap = true,
        telescope = true,
    }
})

vim.cmd.colorscheme "mountnugget"
```

## Overrides

### Palette

You can override the palette by providing a table:

```lua
require("mountnugget").setup({
    palette_overrides ={
        purple_10 = "#dd00ff",
    }
})

vim.cmd.colorscheme "mountnugget"
```

### Highlight groups

If you do not like the current color for a specific highlight group, you can override it in the setup:

```lua
require("mountnugget").setup({
    overrides = {
        ColorColumn = { fg = "#ff0000", bg = "#0000ff" },
        ["@variable.builtin"] = { fg = "#ff0000" },
    }
})

vim.cmd.colorscheme "mountnugget"
```

## Integrations

Below is a list of supported integrations.

<table>
<tr>
<td><b>Plugin</b></td>
<td><b>Integration</b></td>
</tr>

<tr>
<td><a href="https://github.com/akinsho/bufferline.nvim">bufferline.nvim</a></td>
<td>
Update your bufferline config:

```lua
require("bufferline").setup({
    highlights = require("mountnugget.groups.integrations.bufferline").get()
})
```

</td>
</tr>

<tr>
<td><a href="https://github.com/lewis6991/gitsigns.nvim">gitsigns.nvim</a></td>
<td>

```lua
gitsigns = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/nvim-lualine/lualine.nvim">lualine.nvim</a></td>
<td>

```lua
require("lualine").setup({
    options = {
        theme = "mountnugget"
    }
})
```

</td>
</tr>

<tr>
<td><a href="https://www.markdownguide.org/">markdown</a></td>
<td>

```lua
markdown = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/williamboman/mason.nvim">mason.nvim</a></td>
<td>

```lua
mason = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/nvim-neotest/neotest">neotest</a></td>
<td>

```
neotest = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/hrsh7th/nvim-cmp">nvim-cmp</a></td>
<td>

```lua
cmp = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/mfussenegger/nvim-dap">nvim-dap</a></td>
<td>

```lua
dap = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/kyazdani42/nvim-tree.lua">nvim-tree.lua</a></td>
<td>

```lua
nvimtree = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/nvim-treesitter/nvim-treesitter">nvim-treesitter</a></td>
<td>

```lua
treesitter = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/nvim-telescope/telescope.nvim">telescope.nvim</a></td>
<td>

```lua
telescope = true
```

</td>
</tr>

<tr>
<td><a href="https://github.com/folke/which-key.nvim">which-key.nvim</a></td>
<td>

```lua
which_key = true
```

</td>
</tr>
</table>

## Other themes

- [MountNugget.tmux](https://github.com/dlvandenberg/mountnugget.tmux)
- [MountNugget.terminal](https://github.com/dlvandenberg/mountnugget.terminal)

## Credits

The setup of this theme is heavily inspired by the following themes:

- [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- [Catppuccin](https://github.com/catppuccin/nvim)
