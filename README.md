# padawan.nvim

> A Neovim configuration using native `vim.pack` for plugins.

## Features

- Catppuccin Frappé theme, bufferline, lualine, and a floating Fyler file explorer
- Absolute and relative line numbers, cursor line, smart-case search, system clipboard, and four-space indentation
- Lua and Elixir Tree-sitter highlighting, LSP configuration, completion, and format-on-save
- Automatic pairs, Git change signs, and indentation scopes from `mini.nvim`
- Lazygit integration

## Requirements

- Neovim 0.12 or later (`vim.pack` is used to install plugins)
- Git for fetching plugins
- `stylua` for Lua formatting and `mix` for Elixir formatting
- `lazygit` to use `<leader>gg`

The configuration uses Mason and mason-lspconfig for language tools. Its `ensure_installed` list currently contains `lua_ls`, `stylua`, and `expert`. The Lua and Elixir LSP servers are `lua_ls` and `expert`, respectively. Formatting is configured separately through Conform, which calls `stylua` or `mix` from the executable path.

## Installation

Clone this repository into your Neovim configuration directory, then start Neovim:

```bash
git clone https://github.com/naoonaoon/config-neovim.git ~/.config/nvim
nvim
```

`vim.pack` fetches the plugins listed in `lua/plugins/pack.lua` on startup. The repository also contains `nvim-pack-lock.json` with pinned plugin revisions.

## Keymaps

The leader and local leader keys are both `<Space>`. These mappings are defined in normal mode.

| Key | Action |
| --- | --- |
| `<leader>e` | Open the floating Fyler explorer |
| `<leader>bd` | Close the current buffer |
| `H` | Switch to the previous buffer |
| `L` | Switch to the next buffer |
| `<leader>d` | Show diagnostics in a floating window |
| `<leader>gg` | Open Lazygit |

## Language support

| File type | LSP server | Tree-sitter | Formatter |
| --- | --- | --- | --- |
| Lua | `lua_ls` | `lua` | `stylua` |
| Elixir | `expert` | `elixir` | `mix` |

Tree-sitter starts for Lua and Elixir buffers. Conform formats on save with a one-second timeout and falls back to an active LSP formatter when needed.

## Structure

```text
.
├── init.lua                    # Loads configuration and plugins
├── lua
│   ├── config
│   │   ├── autocmds.lua        # Starts Tree-sitter for Lua and Elixir
│   │   ├── keymaps.lua         # Leader keys and mappings
│   │   └── options.lua         # Editor options
│   └── plugins
│       ├── init.lua            # Loads plugin configuration
│       ├── pack.lua            # vim.pack plugin list
│       └── deps/              # Individual plugin setup files
├── nvim-pack-lock.json         # vim.pack lockfile
├── stylua.toml                # Lua formatter settings
└── README.md
```
