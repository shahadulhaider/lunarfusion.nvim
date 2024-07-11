# LunarFusion.nvim

LunarFusion is a Neovim colorscheme that combines elements from Tokyo Night and Gruvbox Dark Hard themes. It provides a dark, soothing environment with vibrant highlights for comfortable coding sessions.

## Features

- Dark background with warm, earthy tones
- Vibrant highlights for important syntax elements
- Support for Treesitter
- Plugin integrations (LSP, Telescope, Nvim-tree, etc.)

## Installation

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
    'shahadulhaider/lunarfusion.nvim',
    config = function()
        require('lunarfusion').setup()
    end
}
```

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

Add the following to your Neovim configuration:

```lua
{
    "shahadulhaider/lunarfusion.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme lunarfusion]])
    end,
}
```
