# MLS

MLS is a muted, low-glare dark theme for terminals, editors, file managers,
and developer tools. It keeps a near-black canvas, cool blue-gray secondary
text, amber focus states, olive values, and soft blue structure.

<p align="center">
  <img src="./assets/mls-showcase.png" alt="MLS theme shown across layered VS Code, Neovim, and Ghostty views" width="1100" />
</p>

The canonical palette is [`palette.json`](./palette.json). Open
[`preview.html`](./preview.html) for a no-build visual preview.

MLS is renamed from the local `Grok Night Quiet` theme family. The palette is
an independent adaptation of [xAI's public Grok Night theme][grok-night];
the upstream project remains the source of the original palette and
attribution.

## Palette

| Role | Hex | Use |
| --- | --- | --- |
| Background | `#0e0e0e` | Main canvas |
| Surface | `#1a1a1a` | Panels, dividers, inactive chrome |
| Selection | `#383838` | Selected text |
| Foreground | `#b2b2b2` | Default text |
| Bright foreground | `#c8c8c8` | Titles and emphasized text |
| Muted | `#585d76` | Comments and secondary text |
| Amber | `#c9a470` | Keywords, constants, cursor, focus |
| Rose | `#df7e90` | Errors and destructive states |
| Olive | `#96b970` | Strings and success states |
| Blue | `#82a0e0` | Functions, types, and links |
| Terminal blue | `#8993a3` | ANSI blue |
| Lavender | `#b69de5` | Numbers, keywords, and softer emphasis |
| Cyan | `#85c3e8` | Types, tags, and structural accents |

## Adapters

The files below are copied or ported from the local theme installation and
renamed to `mls`. `MLS Simple` is retained only where the source editor theme
has a separate syntax mapping.

| Tool | MLS adapter |
| --- | --- |
| Ghostty | [`ghostty/mls`](./ghostty/mls) |
| tmux | [`tmux/mls.conf`](./tmux/mls.conf) |
| Zed | [`zed/mls.json`](./zed/mls.json), [`zed/mls-simple.json`](./zed/mls-simple.json) |
| VS Code | [`vscode/`](./vscode) |
| Helix | [`helix/mls.toml`](./helix/mls.toml), [`helix/mls-simple.toml`](./helix/mls-simple.toml) |
| Neovim | [`nvim/`](./nvim) |
| bat | [`bat/mls.tmTheme`](./bat/mls.tmTheme) |
| btop | [`btop/mls.theme`](./btop/mls.theme) |
| Yazi | [`yazi/mls.yazi/`](./yazi/mls.yazi) |
| Flow | [`flow/mls.json`](./flow/mls.json) |
| Zsh/fzf | [`zsh/`](./zsh) |
| Codex CLI | [`codex/cli/mls.tmTheme`](./codex/cli/mls.tmTheme) |
| Codex desktop | [`codex/desktop/`](./codex/desktop) |

## Install

Copy the adapter into the corresponding user theme directory, then select
`MLS` in the tool. Examples:

```sh
mkdir -p ~/.config/ghostty/themes
cp ghostty/mls ~/.config/ghostty/themes/mls

mkdir -p ~/.codex/themes
cp codex/cli/mls.tmTheme ~/.codex/themes/mls.tmTheme
```

For Codex CLI, set this in `~/.codex/config.toml`:

```toml
[tui]
theme = "mls"
```

For Codex desktop, copy the single line from
[`codex/desktop/import.txt`](./codex/desktop/import.txt) and use
**Settings → Appearance → Import** in the dark theme section.

Codex CLI uses the exact MLS TextMate scopes: ordinary identifiers and function
names use the bright default foreground, while control-flow/declaration
keywords remain accented and strings stay muted orange. Codex desktop only accepts
built-in syntax theme IDs, so its import uses `night-owl` as the closest
supported syntax base for the lavender keywords and warm strings while keeping
MLS surfaces, accents, and diff colors.

The VS Code adapter is a local extension package:

```sh
code --install-extension ./vscode
```

The other adapters follow their native theme paths. See the file layout above
for the exact source file.

## Nordic MLS

Nordic MLS is a second theme in this repo: a straight port of
[AlexvZyl/nordic.nvim][nordic-nvim]'s Nord-based palette (Polar Night
backgrounds, Snow Storm foreground, Frost blues, Aurora accents) to the same
set of tools, without MLS's warm/amber styling.

| Role | Hex | Use |
| --- | --- | --- |
| Background | `#242933` | Main canvas |
| Panel | `#1E222A` | Status line, tab bar, borders |
| Highlight | `#2E3440` | Cursorline, active line, panels |
| Selection | `#434C5E` | Selected text |
| Foreground | `#BBC3D4` | Default text |
| Bright foreground | `#E5E9F0` | Titles and emphasized text |
| Muted | `#60728A` | Comments and secondary text |
| Yellow | `#EBCB8B` | Keywords, cursor, focus |
| Red | `#BF616A` | Errors and destructive states |
| Green | `#A3BE8C` | Strings and success states |
| Blue | `#81A1C1` | Functions, types, and links |
| Cyan | `#88C0D0` | Structural accents, tags |
| Orange | `#D08770` | Constants and numbers |
| Magenta | `#B48EAD` | Keywords, softer emphasis |

| Tool | Nordic MLS adapter |
| --- | --- |
| Ghostty | [`ghostty/nordic-mls`](./ghostty/nordic-mls) |
| tmux | [`tmux/nordic-mls.conf`](./tmux/nordic-mls.conf) |
| Zed | [`zed/nordic-mls.json`](./zed/nordic-mls.json) |
| Helix | [`helix/nordic-mls.toml`](./helix/nordic-mls.toml) |
| Neovim | [`nvim/colors/nordic-mls.lua`](./nvim/colors/nordic-mls.lua) |

Install the same way as the MLS adapters above (copy into the tool's user
theme directory and select the theme). The Neovim adapter is a
self-contained `colors/nordic-mls.lua` file with no plugin dependency — put
this repo's `nvim/` directory on your `runtimepath` and run
`:colorscheme nordic-mls`.

Nordic MLS is a palette port; [nordic.nvim][nordic-nvim] remains the
canonical, actively maintained Nord colorscheme for Neovim with a full plugin
feature set — check it out directly if you want more than a static port.

## License and attribution

This repository is MIT-licensed. The MLS palette is an independent adaptation
of the public [Grok Night theme][grok-night]; check the upstream project for
its license and attribution terms before redistributing a port. The Nordic
MLS palette is an independent adaptation of [nordic.nvim][nordic-nvim], which
is itself based on the [Nord][nord] color palette; check the upstream
projects for their license and attribution terms before redistributing a
port.

[grok-night]: https://github.com/xai-org/grok-build/blob/main/crates/codegen/xai-grok-pager-render/assets/grok-night.tmTheme
[nordic-nvim]: https://github.com/AlexvZyl/nordic.nvim
[nord]: https://www.nordtheme.com/
