<p align="center">
<img src="https://github.com/josepbharrison/onitheme/images/logo.png" width=100/>
</p>

<h1 align="center"> OniTheme </h1>

<p align="center">The default colorscheme used by <a href="https://github.com/josephbharrison/oni">Oni</a> a feature-rich neovim config with a ronin inspired aesthetic</p>

## ✨ Features

- **Automatic** plugin detection and highlight setting (Packer and lazy.nvim supported)
- Override or modify **_EVERYTHING._**
- Global & Theme specific overrides
- Vim terminal colors
- Heirline highlights
- Lualine support

## 🎨 Palettes

<p align="center">
<img src="https://github.com/josephbharrison/onitheme/images/overview.png"/>
</p>

<details>
<summary>Oni Rust</summary>

```vim
colorscheme Oni " The Rust Book inspried theme
```

<p align="center">
<img src="https://github.com/josephbharrison/onitheme/images/onirust.png"/>
</p>

</details>

<details>
<summary>Oni Light</summary>

```vim
colorscheme Oni " Light theme
```

<p align="center">
<img src="https://github.com/josephbharrison/onitheme/images/onilight.png"/>
</p>

</details>

<details>
<summary>Oni Dark (Default)</summary>

```vim
colorscheme Oni " Dark theme
```

<p align="center">
<img src="https://github.com/josephbharrison/onitheme/images/onidark.png"/>
</p>

</details>

## 🛠 Options

```lua
require("onitheme").setup({
  palette = "onidark", -- String of the default palette to use when calling `:colorscheme onitheme`
  background = { -- :h background, palettes to use when using the core vim background colors
    rust= "onirust",
    light = "onilight",
    dark = "onidark",
  },

  style = {
    transparent = false,         -- Bool value, toggles transparency.
    inactive = true,             -- Bool value, toggles inactive window color.
    float = true,                -- Bool value, toggles floating windows background colors.
    neotree = true,              -- Bool value, toggles neo-trees background color.
    border = true,               -- Bool value, toggles borders.
    title_invert = true,         -- Bool value, swaps text and background colors.
    italic_comments = true,      -- Bool value, toggles italic comments.
    simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
  },


  termguicolors = true, -- Bool value, toggles if termguicolors are set by OniTheme.

  terminal_color = true, -- Bool value, toggles if terminal_colors are set by OniTheme.

  plugin_default = "auto", -- Sets how all plugins will be loaded
                           -- "auto": Uses lazy / packer enabled plugins to load highlights.
                           -- true: Enables all plugins highlights.
                           -- false: Disables all plugins.

  plugins = {              -- Allows for individual plugin overrides using plugin name and value from above.
    ["bufferline.nvim"] = false,
  },

  palettes = {
    global = {             -- Globally accessible palettes, theme palettes take priority.
      my_grey = "#ebebeb",
      my_color = "#ffffff"
    },
    onidark = {          -- Extend or modify onidark palette colors
      ui = {
        red = "#800010", -- Overrides onidark red UI color
        accent = "#CC83E3"  -- Changes the accent color of onidark.
      },
      syntax = {
        cyan = "#800010", -- Overrides onidark cyan syntax color
        comments = "#CC83E3"  -- Overrides onidark comment color.
      },
      my_color = "#000000" -- Overrides global.my_color
    },
  },

  highlights = {
    global = {             -- Add or modify hl groups globally, theme specific hl groups take priority.
      modify_hl_groups = function(hl, c)
        hl.PluginColor4 = {fg = c.my_grey, bg = c.none }
      end,
      ["@String"] = {fg = "#ff00ff", bg = "NONE"},
    },
    onidark = {
      -- first parameter is the highlight table and the second parameter is the color palette table
      modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
        hl.Comment.fg = c.my_color
        hl.Comment.italic = true
      end,
      ["@String"] = {fg = "#ff00ff", bg = "NONE"},
    },
  },
})
```

## 📃 Palette Properties

<details>
<summary>modifiable palette names</summary>

```lua
--------------------------------
--- Syntax
--------------------------------
-- only syntax colors.

syntax.red
syntax.blue
syntax.green
syntax.yellow
syntax.purple
syntax.cyan
syntax.orange
syntax.text
syntax.comment
syntax.mute

--------------------------------
--- UI
--------------------------------
-- everything UI and none-text related.
ui.red
ui.blue
ui.green
ui.yellow
ui.purple
ui.cyan
ui.orange

ui.accent

ui.tabline
ui.winbar
ui.tool
ui.base
ui.inactive_base
ui.statusline
ui.split
ui.float
ui.title
ui.border
ui.current_line
ui.scrollbar
ui.selection
ui.menu_selection
ui.highlight
ui.none_text
ui.text
ui.text_active
ui.text_inactive
ui.text_match

ui.prompt

--------------------------------
--- terminal
--------------------------------
-- terminal colors.
term.black
term.bright_black

term.red
term.bright_red

term.green
term.bright_green

term.yellow
term.bright_yellow

term.blue
term.bright_blue

term.purple
term.bright_purple

term.cyan
term.bright_cyan

term.white
term.bright_white

term.background
term.foreground
```

</details>

## ⚡ Requirements

- Neovim >= 0.8

## 🔌 Supported Plugins

| Plugin                                                                          | Key                  |
| ------------------------------------------------------------------------------- | -------------------- |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim)                          | `aerial`             |
| [beacon.nvim](https://github.com/DanilaMihailov/beacon.nvim)                    | `beacon`             |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                   | `bufferline`         |
| [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)                     | `dashboard-nvim`     |
| [flash.nvim](https://github.com/folke/flash.nvim)                               | `flash`              |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                     | `gitsigns`           |
| [hop.nvim](https://github.com/phaazon/hop.nvim/)                                | `hop`                |
| [indent_blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | `indent-blankline`   |
| [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)                   | `lightspeed`         |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                    | `neo-tree`           |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                 | `noice`              |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                 | `nvim-cmp`           |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)                          | `nvim-dap-ui`        |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                          | `nvim-notify`        |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)                     | `nvim-tree`          |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)           | `nvim-treesitter`    |
| [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)                      | `nvim-ts-rainbow`    |
| [nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2)                 | `nvim-ts-rainbow2`   |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)             | `nvim-web-devicons`  |
| [nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)              | `nvim-window-picker` |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)   | `rainbow-delimiters` |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)              | `telescope`          |
| [vimwiki](https://github.com/vimwiki/vimwiki)                                   | `vimwiki`            |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                       | `which-key`          |

## 📦 Installation

Lazy:

```lua
{ "josephbharrison/onitheme" }
```

Packer:

```lua
 use "josephbharrison/onitheme"
```

## 🚀 Contributing

If you plan to contribute, please check the [contribution guidelines](https://github.com/josephbharrison/onitheme/blob/main/CONTRIBUTING.md) first.
# onitheme
