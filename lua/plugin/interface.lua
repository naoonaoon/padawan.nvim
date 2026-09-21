-- Install
vim.pack.add({
    { src = "https://github.com/rebelot/kanagawa.nvim" },
    { src = "https://github.com/FylerOrg/Fyler.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/folke/todo-comments.nvim" },
    { src = "https://github.com/nvim-mini/mini.nvim" },
})

-- Theme
vim.cmd([[colorscheme kanagawa-dragon]])

-- Icon
require("mini.icons").setup()
require("mini.icons").mock_nvim_web_devicons()

-- Explorer
require("fyler").setup({
    kind = "floating",
    integrations = { icon = "mini_icons" },
})

-- Tab Line
require("mini.tabline").setup()
require("mini.bufremove").setup()

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

-- Editor Support
require("mini.pairs").setup()
require("mini.diff").setup()

-- Readability
require("mini.indentscope").setup()
require("todo-comments").setup()
