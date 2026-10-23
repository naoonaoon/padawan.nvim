require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        -- lua
        "lua_ls",
        "stylua",

        -- elixir
        "expert",
    },
})
