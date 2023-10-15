local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
}

--------------------------------
--- Syntax
--------------------------------
c.syntax.red = "#D49668"
c.syntax.blue = "#95BDB7"
c.syntax.green = "#B6BC72"
c.syntax.yellow = "#C5C8C5"
c.syntax.purple = "#AE95B8"
c.syntax.cyan = "#95BDB7"
c.syntax.orange = "#D49668"

c.syntax.comment = "#656865"
c.syntax.text = "#C5C8C5"
c.syntax.mute = "#454845"

--------------------------------
--- UI
--------------------------------
c.ui.red = "#D49668"
c.ui.blue = "#95BDB7"
c.ui.green = "#B6BC72"
c.ui.yellow = "#D49668"
c.ui.purple = "#AE95B8"
c.ui.cyan = "#95BDB7"
c.ui.orange = "#D49668"                                -- neotree active folder

c.ui.accent = "#CDCDDE"                                -- lazy bold text

c.ui.menu_file_open = "#3C6789"
c.ui.menu_directory = "#CDCDDE"
c.ui.tabline = "#171922"        --rs: body bg,         -- neotree inactive tabs, main tab X bg
c.ui.winbar = "#3D3F50"                                -- UNKNOWN??
c.ui.tool = "#292D3E"           --rs: menu bg          -- neotree background, and neotree active tab
c.ui.base = "#1D1F20"           --rs: code bg,         -- Editor background
c.ui.inactive_base = "#2D2F30"  --rs: light code bg,   -- Editor background while not active
c.ui.statusline = "#3D3F50"                            -- Active window status bar (bottom)
c.ui.split = "#000000"                                 -- Thin vertical line between neotree and editor
c.ui.float = "#0D0F10"                                 -- Floating window background
c.ui.title = c.ui.accent                               -- Floating docs body titles
c.ui.border = "#3D3F50"                                -- Floating window border
c.ui.current_line = "#3D3F50"                          -- Editor right column vertical boundary
c.ui.scrollbar = c.ui.accent                           -- UKNOWN??
c.ui.selection = "#1D1F20"                             -- Menu active line (cursor line bg)
c.ui.menu_selection = "#ff0000" --c.ui.selection
c.ui.highlight = "#A5B2BC"
c.ui.none_text = "#1D1F20"
c.ui.text = "#171922"
c.ui.text_active = "#3C6789"
c.ui.text_inactive = "#BCBDCE"
c.ui.text_match = "#3C6789"

c.ui.prompt = "#281E22"

--------------------------------
--- terminal
--------------------------------
c.term.black = c.ui.tabline
c.term.bright_black = c.ui.base

c.term.red = c.syntax.red
c.term.bright_red = c.syntax.red

c.term.green = c.syntax.green
c.term.bright_green = c.syntax.green

c.term.yellow = c.syntax.yellow
c.term.bright_yellow = c.syntax.yellow

c.term.blue = c.syntax.blue
c.term.bright_blue = c.syntax.blue

c.term.purple = c.syntax.purple
c.term.bright_purple = c.syntax.purple

c.term.cyan = c.syntax.cyan
c.term.bright_cyan = c.syntax.cyan

c.term.white = c.ui.text
c.term.bright_white = c.ui.active_text

c.term.background = c.ui.base
c.term.foreground = c.ui.text

--------------------------------
--- Icons
--------------------------------
c.icon = {
  c = "#519aba",
  css = "#61afef",
  deb = "#a1b7ee",
  docker = "#384d54",
  html = "#de8c92",
  jpeg = "#c882e7",
  jpg = "#c882e7",
  js = "#ebcb8b",
  jsx = "#519ab8",
  kt = "#7bc99c",
  lock = "#c4c720",
  lua = "#51a0cf",
  mp3 = "#d39ede",
  mp4 = "#9ea3de",
  out = "#abb2bf",
  png = "#c882e7",
  py = "#a3b8ef",
  rb = "#ff75a0",
  robots = "#abb2bf",
  rpm = "#fca2aa",
  rs = "#dea584",
  toml = "#29bf39",
  ts = "#519aba",
  ttf = "#abb2bf",
  vue = "#7bc99c",
  woff = "#abb2bf",
  woff2 = "#abb2bf",
  zip = "#f9d71c",
  md = "#519aba",
  pkg = "#d39ede",
}

return c
