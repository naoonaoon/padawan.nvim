require("lualine").setup({
    options = {
        theme = "catppuccin-nvim",
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = { "filetype" },
        lualine_z = { "%l:%L" },
    },
})
