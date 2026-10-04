return {
    lua = {
        server = "lua_ls",
        file_type = "lua",
        formatters = { "stylua" },
    },
    elixir = {
        server = "expert",
        file_type = "elixir",
        formatters = { "mix" },
    },
}
