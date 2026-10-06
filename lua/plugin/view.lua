-- Install
vim.pack.add({
    { src = "https://github.com/catppuccin/nvim" },
    { src = "https://github.com/FylerOrg/Fyler.nvim" },
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/akinsho/bufferline.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
})

-- Theme
vim.cmd("colorscheme catppuccin-frappe")

-- Icon
require("mini.icons").setup()
require("mini.icons").mock_nvim_web_devicons()

-- Explorer
require("fyler").setup({
    kind = "floating",
    integrations = { icon = "mini_icons" },
})

-- Buffer Line
require("bufferline").setup({
    options = { separator_style = "slant" },
    highlights = require("catppuccin.special.bufferline").get_theme(),
})

-- Status Line
require("lualine").setup({
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = { "filetype" },
        lualine_z = { "%l:%L" },
    },
})

-- Render Markdown
require("render-markdown").setup({
    heading = {
        icons = {},
        sign = false,
    },
})
