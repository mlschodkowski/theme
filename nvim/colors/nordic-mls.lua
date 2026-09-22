-- Nordic MLS: standalone Neovim colorscheme derived from AlexvZyl/nordic.nvim.
-- A self-contained port (no plugin dependency) matching the Ghostty/tmux/Zed/Helix adapters.
-- Semantic mapping follows nordic.nvim's native highlight groups: bold orange
-- keywords, cyan-blue functions, yellow types, bright magenta constants.

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
  fg_bright = "#D8DEE9",
  fg_gutter = "#4C566A",
  comment = "#4C566A",
  delimiter = "#60728A",
  red = "#BF616A",
  red_bright = "#C5727A",
  orange = "#D08770",
  yellow = "#EBCB8B",
  yellow_dim = "#E7C173",
  green = "#A3BE8C",
  cyan = "#8FBCBB",
  cyan_dim = "#80B3B2",
  blue0 = "#5E81AC",
  blue1 = "#81A1C1",
  blue2 = "#88C0D0",
  magenta = "#B48EAD",
  magenta_bright = "#BE9DB8",
  ansi_black = "#191D24",
  ansi_bright_black = "#3B4252",
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
hl(0, "Cursor", { fg = c.bg, bg = c.fg })
hl(0, "Visual", { bg = c.bg_visual })
hl(0, "VisualNOS", { bg = c.bg_visual })
hl(0, "Search", { fg = c.yellow, bg = c.bg_visual, bold = true, underline = true })
hl(0, "IncSearch", { fg = c.bg_visual, bg = c.yellow, bold = true })
hl(0, "MatchParen", { underline = true, bold = true })
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
hl(0, "Directory", { fg = c.blue1 })
hl(0, "Title", { fg = c.fg_bright, bold = true })
hl(0, "ErrorMsg", { fg = c.red, bold = true })
hl(0, "WarningMsg", { fg = c.yellow, bold = true })
hl(0, "ModeMsg", { fg = c.fg })
hl(0, "Question", { fg = c.blue1 })

-- Syntax (matches nordic.nvim's native.lua group mapping)
hl(0, "Comment", { fg = c.comment, italic = true })
hl(0, "Constant", { fg = c.magenta_bright })
hl(0, "String", { fg = c.green })
hl(0, "Character", { fg = c.green })
hl(0, "Number", { fg = c.magenta_bright })
hl(0, "Boolean", { fg = c.magenta_bright })
hl(0, "Float", { fg = c.magenta_bright })
hl(0, "Identifier", { fg = c.fg })
hl(0, "Function", { fg = c.blue2 })
hl(0, "Statement", { fg = c.orange, bold = true })
hl(0, "Conditional", { fg = c.orange, bold = true })
hl(0, "Repeat", { fg = c.orange, bold = true })
hl(0, "Label", { fg = c.orange, bold = true })
hl(0, "Operator", { fg = c.fg })
hl(0, "Keyword", { fg = c.orange, bold = true })
hl(0, "Exception", { fg = c.red })
hl(0, "PreProc", { fg = c.red })
hl(0, "Include", { fg = c.red })
hl(0, "Define", { fg = c.red })
hl(0, "Macro", { fg = c.red })
hl(0, "PreCondit", { fg = c.red })
hl(0, "Type", { fg = c.yellow })
hl(0, "StorageClass", { fg = c.orange, bold = true })
hl(0, "Structure", { fg = c.yellow })
hl(0, "Typedef", { fg = c.yellow })
hl(0, "Special", { fg = c.blue1 })
hl(0, "SpecialChar", { fg = c.cyan })
hl(0, "Tag", { fg = c.blue2 })
hl(0, "Delimiter", { fg = c.delimiter, italic = true })
hl(0, "SpecialComment", { fg = c.comment, italic = true })
hl(0, "Debug", { fg = c.red })
hl(0, "Underlined", { fg = c.blue1, underline = true })
hl(0, "Ignore", { fg = c.fg_gutter })
hl(0, "Error", { fg = c.red, bold = true })
hl(0, "Todo", { fg = c.bg, bg = c.yellow_dim, bold = true })

-- Diff
hl(0, "DiffAdd", { fg = c.green, bg = c.bg_highlight })
hl(0, "DiffChange", { fg = c.yellow, bg = c.bg_highlight })
hl(0, "DiffDelete", { fg = c.red, bg = c.bg_highlight })
hl(0, "DiffText", { fg = c.fg_bright, bg = c.bg_visual })

-- LSP / Diagnostics
hl(0, "DiagnosticError", { fg = c.red })
hl(0, "DiagnosticWarn", { fg = c.yellow })
hl(0, "DiagnosticInfo", { fg = c.blue1 })
hl(0, "DiagnosticHint", { fg = c.cyan_dim })
hl(0, "DiagnosticUnderlineError", { sp = c.red, underline = true })
hl(0, "DiagnosticUnderlineWarn", { sp = c.yellow, underline = true })
hl(0, "DiagnosticUnderlineInfo", { sp = c.blue1, underline = true })
hl(0, "DiagnosticUnderlineHint", { sp = c.cyan_dim, underline = true })

-- Treesitter
hl(0, "@variable", { fg = c.fg })
hl(0, "@variable.builtin", { fg = c.magenta_bright })
hl(0, "@variable.member", { fg = c.cyan })
hl(0, "@property", { fg = c.cyan })
hl(0, "@constant", { fg = c.magenta_bright })
hl(0, "@constant.builtin", { fg = c.magenta_bright })
hl(0, "@string", { fg = c.green })
hl(0, "@string.escape", { fg = c.cyan })
hl(0, "@string.special", { fg = c.cyan })
hl(0, "@number", { fg = c.magenta_bright })
hl(0, "@boolean", { fg = c.magenta_bright })
hl(0, "@function", { fg = c.blue2 })
hl(0, "@function.builtin", { fg = c.blue0 })
hl(0, "@constructor", { fg = c.blue2 })
hl(0, "@keyword", { fg = c.orange, bold = true })
hl(0, "@keyword.function", { fg = c.orange, bold = true })
hl(0, "@keyword.return", { fg = c.orange, bold = true })
hl(0, "@operator", { fg = c.fg })
hl(0, "@punctuation.bracket", { fg = c.delimiter })
hl(0, "@punctuation.delimiter", { fg = c.delimiter })
hl(0, "@punctuation.special", { fg = c.orange, bold = true })
hl(0, "@comment", { fg = c.comment, italic = true })
hl(0, "@comment.documentation", { fg = c.comment, italic = true })
hl(0, "@type", { fg = c.yellow })
hl(0, "@type.builtin", { fg = c.yellow })
hl(0, "@tag", { fg = c.blue2 })
hl(0, "@tag.attribute", { fg = c.blue1 })
hl(0, "@tag.delimiter", { fg = c.delimiter })
hl(0, "@namespace", { fg = c.yellow_dim })

-- Terminal colors (ANSI, matches nordic.nvim/groups/terminal.lua)
vim.g.terminal_color_0 = c.ansi_black
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue0
vim.g.terminal_color_5 = c.magenta
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.ansi_bright_black
vim.g.terminal_color_9 = c.red_bright
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.blue2
vim.g.terminal_color_13 = c.magenta_bright
vim.g.terminal_color_14 = c.cyan_dim
vim.g.terminal_color_15 = c.fg_bright
