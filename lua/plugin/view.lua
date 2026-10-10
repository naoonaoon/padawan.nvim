-- Install
vim.pack.add({
    { src = "https://github.com/folke/zen-mode.nvim" },
    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
})

-- Zen Mode
require("zen-mode").setup()

-- Render Markdown
require("render-markdown").setup({
    heading = {
        icons = {},
        sign = false,
    },
})
