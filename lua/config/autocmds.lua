vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        -- lua
        "lua",
        -- elixir
        "elixir",
    },
    callback = function()
        vim.treesitter.start()
    end,
})
