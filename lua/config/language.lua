return {
    lua = {
        servers = { "lua_ls" },
        parsers = { "lua" }, 
        filetypes = { "lua" },
        formatters = { "stylua" },
    },
    elixir = {
        servers = { "expert" },
        parsers = { "elixir" },
        filetypes = { "elixir" },
        formatters = { "mix" },
    },
}
