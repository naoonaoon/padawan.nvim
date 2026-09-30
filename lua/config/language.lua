return {
    lua = {
        server = "lua_ls",
        parser = "lua",
        file_type = "lua",
        formatters = { "stylua" },
    },
    elixir = {
        server = "expert",
        parser = "elixir",
        file_type = "elixir",
        formatters = { "mix" },
    },
}
