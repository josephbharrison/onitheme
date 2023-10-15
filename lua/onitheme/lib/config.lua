M = {}

M.default = {
  palette = "onidark",
  termguicolors = true,
  terminal_colors = true,
  dev = false,
  style = {
    transparent = false,
    inactive = true,
    float = true,
    neotree = true,
    border = true,
    title_invert = false,
    italic_comments = true,
    simple_syntax_colors = false,
  },
  background = {
    light = "onilight",
    dark = "onidark",
  },
  palettes = {
    global = {},
    onidark = {},
    onilight = {},
    onirust = {},
  },
  highlights = {
    global = {},
    onidark = {},
    onilight = {},
    onirust = {},
  },
  plugin_default = "auto",
  plugins = {},
}

function M.user_config(opts) return vim.tbl_deep_extend("force", M.default, opts or {}) end

return M
