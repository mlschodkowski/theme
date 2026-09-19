-- MLS palettes — exact tokens from palette.toml / Ghostty / Herdr
-- Spirit: near-black chrome, muted grays, bright accents only for status/syntax.
-- Source: xai-org/grok-build (MLS / GrokDay)

local M = {}

M.night = {
  -- Backgrounds (darkest → lightest surface)
  bg_terminal = "#0a0a0a", -- ANSI black / deepest void
  bg_dark = "#0e0e0e", -- sidebar, status, inactive chrome
  bg_storm = "#111214",
  bg = "#0e0e0e", -- upstream MLS background
  bg_highlight = "#1a1a1a", -- upstream line highlight
  bg_visual = "#383838", -- upstream selection
  bg_popup = "#111214",
  bg_float = "#111214",
  bg_statusline = "#0e0e0e",
  bg_sidebar = "#111214",
  surface0 = "#16181b",
  surface1 = "#1c1f23",
  surface2 = "#25292e",

  -- Text / grays (restrained — not washed-out bright UI)
  fg = "#b2b2b2",
  fg_secondary = "#9ea1a5",
  fg_gutter = "#44484e",
  fg_dark = "#6f747b",
  comment = "#585d76",
  dark3 = "#4c5260",
  dark5 = "#6c727a",

  -- Accents (TokyoNight on neutral gray)
  blue = "#82a0e0",
  terminal_blue = "#8993a3",
  terminal_blue_bright = "#b2b2b2",
  blue0 = "#586f9f",
  blue1 = "#6b9da8",
  cyan = "#85c3e8",
  green = "#96b970",
  green1 = "#79c5b9",
  magenta = "#b69de5",
  orange = "#e49b70",
  purple = "#9e8bb9",
  red = "#df7e90",
  red1 = "#b86f78",
  teal = "#79c5b9",
  yellow = "#c9a470", -- quiet focus accent
  plan = "#c9a470",
  link = "#829bc8",

  git_add = "#9ece6a",
  git_change = "#e0af68",
  git_delete = "#f7768e",
  diff_add = "#183324",
  diff_delete = "#351e24",
  diff_change = "#2f291f",
  diff_text = "#423a2b",

  none = "NONE",
}

M.day = {
  bg_terminal = "#f5f5f5",
  bg_dark = "#f0f0f0",
  bg_storm = "#eaeaea",
  bg = "#eeeeee",
  bg_highlight = "#dedede",
  bg_visual = "#dedede",
  bg_popup = "#f0f0f0",
  bg_float = "#f0f0f0",
  bg_statusline = "#eaeaea",
  bg_sidebar = "#eaeaea",
  surface0 = "#eaeaea",
  surface1 = "#dedede",
  surface2 = "#d0d0d0",

  fg = "#262626",
  fg_secondary = "#444444",
  fg_gutter = "#b2b2b2",
  fg_dark = "#626262",
  comment = "#767676",
  dark3 = "#8e8e8e",
  dark5 = "#626262",

  blue = "#2F64D2",
  blue0 = "#28448A",
  blue1 = "#0F87A2",
  cyan = "#0082AA",
  green = "#378E23",
  green1 = "#0C947C",
  magenta = "#7D4BC6",
  orange = "#C3691E",
  purple = "#6C3EB2",
  red = "#CD3048",
  red1 = "#AF2323",
  teal = "#0A8E70",
  yellow = "#A27612",
  plan = "#A8780A",
  link = "#2F64D2",

  git_add = "#378E23",
  git_change = "#A27612",
  git_delete = "#CD3048",
  diff_add = "#DAF2DC",
  diff_delete = "#F5DADE",
  diff_change = "#F5EED8",
  diff_text = "#E8DCB8",

  none = "NONE",
}

---@param style "night"|"day"|nil
---@return table
function M.get(style)
  style = style or "night"
  return M[style] or M.night
end

return M
