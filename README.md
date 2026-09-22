# Carbon

Carbon is my daily theme. It applies one dark palette across my terminal,
editor, and multiplexer workflow. Helix uses its built-in `carbon` theme.

The editor colors come from [Carbon Helix](https://github.com/rishikanthc/carbon-helix).
The palette follows Carbon Design System's gray scale and semantic color roles,
with the softer shades used by that Helix theme.

## Palette

The canonical tokens are in `palette.json`. Application-specific files map
those tokens to each program's theme format:

- `ghostty/carbon`
- `gnome-terminal/apply-carbon`
- `zed/Carbon.json`
- `zed/go-semantic-tokens.jsonc` (merge into Zed settings)
- `nvim/colors/carbon.lua`
- `zsh/carbon-prompt.zsh` and `zsh/carbon-fzf.zsh`
- `helix/config.toml` (built-in theme selection)
- `tmux/carbon.conf`

For GNOME Terminal, run `gnome-terminal/apply-carbon` in a GNOME session. It
sets the colors on the current default profile. The terminal application and
its profile settings must be available on the system.

## Daily theme

Ghostty, Zed, Neovim, tmux, and Zsh configs in this home directory select Carbon.
Set `theme = "carbon"` in Helix's `config.toml` to use its built-in theme.
The Zed and Neovim ports preserve Carbon's italic syntax roles. Zed uses the
installed `Ioskeley Mono` italic face, matching Ghostty in this setup.
For Go, Zed combines gopls semantic tokens with Tree-sitter so parameters use
Carbon's pink italic style. Zed's built-in Go query groups `return` with other
control-flow keywords, so its theme cannot color `return` separately from
`if`, `for`, and similar keywords.

## Sources

- [Carbon Helix](https://github.com/rishikanthc/carbon-helix)
- [Carbon Design System](https://carbondesignsystem.com/)
