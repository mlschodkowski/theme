-- Nordic MLS: standalone Neovim colorscheme derived from AlexvZyl/nordic.nvim.
-- A self-contained port (no plugin dependency) matching the Ghostty/tmux/Zed/Helix adapters.

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "nordic-mls"

local c = {
  bg = "#242933",
  bg_dark = "#1E222A",
  bg_popup = "#222630",
  bg_highlight = "#2E3440",
  bg_visual = "#434C5E",
  fg = "#BBC3D4",
  fg_bright = "#E5E9F0",
  fg_gutter = "#4C566A",
  comment = "#60728A",
  red = "#BF616A",
  orange = "#D08770",
  yellow = "#EBCB8B",
  green = "#A3BE8C",
  cyan = "#88C0D0",
  teal = "#8FBCBB",
  blue = "#81A1C1",
  blue_dark = "#5E81AC",
  magenta = "#B48EAD",
  ansi_black = "#3B4252",
  ansi_white = "#E5E9F0",
  ansi_bright_white = "#ECEFF4",
  none = "NONE",
}

local hl = vim.api.nvim_set_hl

-- Editor UI
hl(0, "Normal", { fg = c.fg, bg = c.bg })
hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_popup })
hl(0, "FloatBorder", { fg = c.fg_gutter, bg = c.bg_popup })
hl(0, "SignColumn", { fg = c.fg_gutter, bg = c.bg })
hl(0, "FoldColumn", { fg = c.fg_gutter, bg = c.bg })
hl(0, "Folded", { fg = c.comment, bg = c.bg_highlight })
hl(0, "LineNr", { fg = c.fg_gutter, bg = c.bg })
hl(0, "CursorLineNr", { fg = c.yellow, bg = c.bg_highlight, bold = true })
hl(0, "CursorLine", { bg = c.bg_highlight })
hl(0, "ColorColumn", { bg = c.bg_highlight })
hl(0, "Cursor", { fg = c.bg, bg = c.yellow })
hl(0, "Visual", { bg = c.bg_visual })
hl(0, "VisualNOS", { bg = c.bg_visual })
hl(0, "Search", { fg = c.bg, bg = c.yellow })
hl(0, "IncSearch", { fg = c.bg, bg = c.orange })
hl(0, "MatchParen", { fg = c.yellow, bold = true })
hl(0, "StatusLine", { fg = c.fg, bg = c.bg_dark })
hl(0, "StatusLineNC", { fg = c.comment, bg = c.bg_dark })
hl(0, "WinSeparator", { fg = c.bg_dark })
hl(0, "VertSplit", { fg = c.bg_dark })
hl(0, "TabLine", { fg = c.comment, bg = c.bg_dark })
hl(0, "TabLineFill", { fg = c.fg, bg = c.bg })
hl(0, "TabLineSel", { fg = c.fg_bright, bg = c.bg, bold = true })
hl(0, "Pmenu", { fg = c.fg, bg = c.bg_popup })
hl(0, "PmenuSel", { fg = c.bg, bg = c.yellow, bold = true })
hl(0, "PmenuSbar", { bg = c.bg_dark })
hl(0, "PmenuThumb", { bg = c.fg_gutter })
hl(0, "NonText", { fg = c.fg_gutter })
hl(0, "Whitespace", { fg = c.fg_gutter })
hl(0, "EndOfBuffer", { fg = c.bg })
hl(0, "Directory", { fg = c.blue })
hl(0, "Title", { fg = c.fg_bright, bold = true })
hl(0, "ErrorMsg", { fg = c.red, bold = true })
hl(0, "WarningMsg", { fg = c.yellow, bold = true })
hl(0, "ModeMsg", { fg = c.fg })
hl(0, "Question", { fg = c.blue })

-- Syntax
hl(0, "Comment", { fg = c.comment, italic = true })
hl(0, "Constant", { fg = c.orange })
hl(0, "String", { fg = c.green })
hl(0, "Character", { fg = c.green })
hl(0, "Number", { fg = c.orange })
hl(0, "Boolean", { fg = c.orange })
hl(0, "Float", { fg = c.orange })
hl(0, "Identifier", { fg = c.fg })
hl(0, "Function", { fg = c.blue })
hl(0, "Statement", { fg = c.magenta })
hl(0, "Conditional", { fg = c.magenta })
hl(0, "Repeat", { fg = c.magenta })
hl(0, "Label", { fg = c.magenta })
hl(0, "Operator", { fg = c.yellow })
hl(0, "Keyword", { fg = c.magenta })
hl(0, "Exception", { fg = c.magenta })
hl(0, "PreProc", { fg = c.cyan })
hl(0, "Include", { fg = c.cyan })
hl(0, "Define", { fg = c.cyan })
hl(0, "Macro", { fg = c.cyan })
hl(0, "PreCondit", { fg = c.cyan })
hl(0, "Type", { fg = c.blue })
hl(0, "StorageClass", { fg = c.blue })
hl(0, "Structure", { fg = c.blue })
hl(0, "Typedef", { fg = c.blue })
hl(0, "Special", { fg = c.teal })
hl(0, "SpecialChar", { fg = c.teal })
hl(0, "Tag", { fg = c.blue })
hl(0, "Delimiter", { fg = c.fg_gutter })
hl(0, "SpecialComment", { fg = c.comment, italic = true })
hl(0, "Debug", { fg = c.red })
hl(0, "Underlined", { fg = c.blue, underline = true })
hl(0, "Ignore", { fg = c.fg_gutter })
hl(0, "Error", { fg = c.red, bold = true })
hl(0, "Todo", { fg = c.yellow, bold = true })

-- Diff
hl(0, "DiffAdd", { fg = c.green, bg = c.bg_highlight })
hl(0, "DiffChange", { fg = c.yellow, bg = c.bg_highlight })
hl(0, "DiffDelete", { fg = c.red, bg = c.bg_highlight })
hl(0, "DiffText", { fg = c.fg_bright, bg = c.bg_visual })

-- LSP / Diagnostics
hl(0, "DiagnosticError", { fg = c.red })
hl(0, "DiagnosticWarn", { fg = c.yellow })
hl(0, "DiagnosticInfo", { fg = c.blue })
hl(0, "DiagnosticHint", { fg = c.teal })
hl(0, "DiagnosticUnderlineError", { sp = c.red, underline = true })
hl(0, "DiagnosticUnderlineWarn", { sp = c.yellow, underline = true })
hl(0, "DiagnosticUnderlineInfo", { sp = c.blue, underline = true })
hl(0, "DiagnosticUnderlineHint", { sp = c.teal, underline = true })

-- Treesitter
hl(0, "@variable", { fg = c.fg })
hl(0, "@variable.builtin", { fg = c.magenta })
hl(0, "@variable.member", { fg = c.fg })
hl(0, "@constant", { fg = c.orange })
hl(0, "@constant.builtin", { fg = c.orange })
hl(0, "@string", { fg = c.green })
hl(0, "@string.escape", { fg = c.cyan })
hl(0, "@string.special", { fg = c.teal })
hl(0, "@number", { fg = c.orange })
hl(0, "@boolean", { fg = c.orange })
hl(0, "@function", { fg = c.blue })
hl(0, "@function.builtin", { fg = c.cyan })
hl(0, "@constructor", { fg = c.blue })
hl(0, "@keyword", { fg = c.magenta })
hl(0, "@keyword.function", { fg = c.magenta })
hl(0, "@keyword.return", { fg = c.magenta })
hl(0, "@operator", { fg = c.yellow })
hl(0, "@punctuation.bracket", { fg = c.fg_gutter })
hl(0, "@punctuation.delimiter", { fg = c.fg_gutter })
hl(0, "@punctuation.special", { fg = c.yellow })
hl(0, "@comment", { fg = c.comment, italic = true })
hl(0, "@comment.documentation", { fg = c.comment, italic = true })
hl(0, "@type", { fg = c.blue })
hl(0, "@type.builtin", { fg = c.blue })
hl(0, "@tag", { fg = c.blue })
hl(0, "@tag.attribute", { fg = c.blue })
hl(0, "@tag.delimiter", { fg = c.fg_gutter })

-- Terminal colors (ANSI)
vim.g.terminal_color_0 = c.ansi_black
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.magenta
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.ansi_white
vim.g.terminal_color_8 = c.fg_gutter
vim.g.terminal_color_9 = c.red
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.blue
vim.g.terminal_color_13 = c.magenta
vim.g.terminal_color_14 = c.cyan
vim.g.terminal_color_15 = c.ansi_bright_white
