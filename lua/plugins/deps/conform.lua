require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        elixir = { "mix" },
    },
    format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
    },
})
