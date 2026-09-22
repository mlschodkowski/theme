-- Carbon theme adapted from rishikanthc/carbon-helix.
vim.o.background = "dark"
vim.g.colors_name = "carbon"
vim.g.terminal_color_0 = "#161616"
vim.g.terminal_color_1 = "#ff8389"
vim.g.terminal_color_2 = "#42be65"
vim.g.terminal_color_3 = "#f1c21b"
vim.g.terminal_color_4 = "#4589ff"
vim.g.terminal_color_5 = "#a56eff"
vim.g.terminal_color_6 = "#08bdba"
vim.g.terminal_color_7 = "#c8ccd4"
vim.g.terminal_color_8 = "#525252"
vim.g.terminal_color_9 = "#ff7eb6"
vim.g.terminal_color_10 = "#6fdc8c"
vim.g.terminal_color_11 = "#fddc69"
vim.g.terminal_color_12 = "#78a9ff"
vim.g.terminal_color_13 = "#be95ff"
vim.g.terminal_color_14 = "#3ddbd9"
vim.g.terminal_color_15 = "#f4f4f4"

local c = {
  bg = "#161616", surface = "#262626", border = "#393939",
  gray = "#a8a8a8", muted = "#8d8d8d", dim = "#6f6f6f", white = "#c8ccd4",
  blue = "#78a9ff", blue_bright = "#82cfff", cyan = "#3ddbd9", teal = "#08bdba",
  green = "#a7f0ba", green_bright = "#6fdc8c", pink = "#ff7eb6", purple = "#be95ff",
  red = "#ff8389", yellow = "#fddc69",
}

local groups = {
  Normal = { fg = c.gray, bg = c.bg }, NormalFloat = { fg = c.gray, bg = c.surface },
  FloatBorder = { fg = c.border, bg = c.surface }, SignColumn = { fg = c.dim, bg = c.bg },
  LineNr = { fg = c.dim, bg = c.bg }, CursorLineNr = { fg = c.white, bg = c.bg, bold = true },
  CursorLine = { bg = c.surface }, Visual = { bg = c.border }, Search = { fg = c.bg, bg = c.yellow },
  IncSearch = { fg = c.bg, bg = c.blue_bright }, MatchParen = { fg = c.blue_bright, bold = true },
  Comment = { fg = "#525252", italic = true }, Constant = { fg = c.cyan }, String = { fg = c.green },
  Character = { fg = "#6fdc8c" }, Number = { fg = c.teal }, Boolean = { fg = c.cyan, bold = true },
  Identifier = { fg = c.gray }, Function = { fg = c.blue, bold = true }, Statement = { fg = c.blue_bright, bold = true },
  Conditional = { fg = c.blue_bright, bold = true }, Repeat = { fg = c.blue_bright, bold = true },
  Operator = { fg = c.blue_bright }, Keyword = { fg = c.blue_bright, bold = true }, Type = { fg = c.teal, italic = true },
  Special = { fg = c.purple }, PreProc = { fg = c.purple }, Todo = { fg = c.yellow, bold = true },
  Attribute = { fg = "#bae6ff", italic = true }, Label = { fg = c.blue, italic = true },
  Namespace = { fg = c.teal, italic = true }, StorageClass = { fg = c.purple, bold = true },
  Structure = { fg = c.teal, italic = true },
  Error = { fg = c.pink }, DiagnosticError = { fg = c.pink }, DiagnosticWarn = { fg = c.yellow },
  DiagnosticInfo = { fg = c.blue }, DiagnosticHint = { fg = c.cyan }, DiffAdd = { fg = c.green_bright },
  DiffChange = { fg = c.blue }, DiffDelete = { fg = c.red }, Pmenu = { fg = c.gray, bg = c.surface },
  PmenuSel = { fg = c.white, bg = c.border, bold = true }, StatusLine = { fg = c.white, bg = c.surface },
  StatusLineNC = { fg = c.muted, bg = c.surface }, TabLine = { fg = c.muted, bg = c.surface },
  TabLineSel = { fg = c.white, bg = c.bg, bold = true }, WinSeparator = { fg = c.border },
  Title = { fg = c.blue_bright, bold = true }, Directory = { fg = c.blue },
  NonText = { fg = c.border }, SpecialKey = { fg = c.border }, Whitespace = { fg = c.border },
}
for group, spec in pairs(groups) do vim.api.nvim_set_hl(0, group, spec) end

local treesitter = {
  ["@attribute"] = { fg = "#bae6ff", italic = true },
  ["@type"] = { fg = c.teal, italic = true },
  ["@type.builtin"] = { fg = c.teal, bold = true },
  ["@type.enum.variant"] = { fg = c.pink },
  ["@constructor"] = { fg = c.purple, bold = true },
  ["@constant"] = { fg = c.cyan },
  ["@constant.builtin"] = { fg = c.cyan, bold = true },
  ["@constant.character"] = { fg = "#6fdc8c" },
  ["@constant.character.escape"] = { fg = c.purple },
  ["@constant.numeric"] = { fg = c.teal },
  ["@string"] = { fg = c.green },
  ["@string.regexp"] = { fg = c.purple },
  ["@string.special"] = { fg = c.blue },
  ["@string.special.symbol"] = { fg = c.teal },
  ["@string.special.url"] = { fg = "#4589ff", underline = true },
  ["@comment"] = { fg = "#525252", italic = true },
  ["@variable"] = { fg = c.gray },
  ["@variable.builtin"] = { fg = c.teal, bold = true },
  ["@variable.parameter"] = { fg = c.pink, italic = true },
  ["@variable.member"] = { fg = c.pink, italic = true },
  ["@property"] = { fg = c.pink, italic = true },
  ["@label"] = { fg = c.blue, italic = true },
  ["@punctuation"] = { fg = c.gray },
  ["@punctuation.special"] = { fg = c.blue_bright },
  ["@punctuation.bracket"] = { fg = "#8d8d8d" },
  ["@punctuation.delimiter"] = { fg = "#8d8d8d" },
  ["@keyword"] = { fg = c.blue_bright, bold = true },
  ["@keyword.control.import"] = { fg = c.purple, bold = true },
  ["@keyword.import"] = { fg = c.purple, bold = true },
  ["@keyword.control.return"] = { fg = "#ffd7d9", bold = true },
  ["@keyword.return"] = { fg = "#ffd7d9", bold = true },
  ["@keyword.control.exception"] = { fg = "#ffa4a9", bold = true },
  ["@keyword.function"] = { fg = c.teal, bold = true, italic = true },
  ["@keyword.storage"] = { fg = c.purple, bold = true },
  ["@keyword.storage.modifier"] = { fg = c.purple, italic = true },
  ["@operator"] = { fg = c.blue_bright },
  ["@function"] = { fg = c.blue, bold = true },
  ["@function.builtin"] = { fg = c.blue_bright, bold = true },
  ["@function.method"] = { fg = c.blue, bold = true },
  ["@tag"] = { fg = c.cyan },
  ["@tag.builtin"] = { fg = c.cyan, bold = true },
  ["@namespace"] = { fg = c.teal, italic = true },
  ["@module"] = { fg = c.teal, italic = true },
}
for group, spec in pairs(treesitter) do vim.api.nvim_set_hl(0, group, spec) end
