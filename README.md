# padawan.nvim

> A minimal, opinionated Neovim configuration built around `mini.nvim` and native `vim.pack`.

<pre>
  _ __   __ _  __| | __ ___      ____ _ _ __
 | '_ \ / _` |/ _` |/ _` \ \ /\ / / _` | '_ \
 | |_) | (_| | (_| | (_| |\ V  V / (_| | | | |
 | .__/ \__,_|\__,_|\__,_| \_/\_/ \__,_|_| |_|
 |_|
</pre>

Simple by design. Easy to understand. Focused on the editor.

## Features

- Catppuccin Frappe theme, floating file explorer, buffer line, and status line
- Relative line numbers, cursor line, smart-case search, system clipboard, and four-space indentation
- Lua and Elixir LSP support, Tree-sitter highlighting, completion, and format-on-save
- Automatic bracket pairing, Git change indicators, indentation scopes, and Markdown rendering
- Lazygit and Zen Mode integrations

## Requirements

- Neovim 0.12 or later (uses native `vim.pack`)
- Git (used by `vim.pack` to fetch plugins)

Optional tools are needed only for the integrations or languages you use:

- [lazygit](https://github.com/jesseduffield/lazygit) for `<leader>gg`
- [Mason](https://github.com/mason-org/mason.nvim)-managed LSP servers: `lua_ls` and/or `expert`
- `stylua` to format Lua and `mix` to format Elixir

For example, on macOS:

```bash
brew install neovim git lazygit stylua
```

Install LSP servers from Neovim with `:Mason` (or `:MasonInstall lua-language-server expert`). Plugins and configured Tree-sitter parsers are fetched when Neovim starts.

## Installation

Clone the repository into your Neovim configuration directory:

```bash
git clone https://github.com/naoonaoon/padawan.nvim.git ~/.config/nvim
```

Then launch Neovim:

```bash
nvim
```

## Keymaps

The leader key is set to `<Space>`.

### Normal mode

| Key | Action |
| --- | --- |
| `<leader>e` | Open the floating file explorer |
| `<leader>bd` | Close the current buffer |
| `H` | Move to the previous buffer |
| `L` | Move to the next buffer |
| `<leader>d` | Show diagnostics in a floating window |
| `<leader>gg` | Open Lazygit |
| `<leader>zz` | Toggle Zen Mode |

## Supported languages

| Language | LSP server | Formatter |
| --- | --- | --- |
| Lua | `lua_ls` | `stylua` |
| Elixir | `expert` | `mix` |

Format-on-save uses the configured formatter, falling back to the active LSP when available.

## Structure

```text
nvim
├── init.lua                    # Loads options, keymaps, and plugin groups
├── lua
│   ├── config
│   │   ├── keymap.lua          # Global keymaps and leader keys
│   │   ├── language.lua        # Language server, parser, and formatter definitions
│   │   └── option.lua          # Neovim options
│   └── plugin
│       ├── editor.lua          # Editing, Git, and Zen Mode plugins
│       ├── language.lua        # LSP, Tree-sitter, and Conform setup
│       └── view.lua            # Theme and UI plugins
├── stylua.toml
└── README.md
```
