-- Install
vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/folke/zen-mode.nvim" },
    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
})

-- Icon
require("mini.icons").setup()
require("mini.icons").mock_nvim_web_devicons()
-- Zen Mode
require("zen-mode").setup()

-- Render Markdown
require("render-markdown").setup({
    heading = {
        icons = {},
        sign = false,
    },
})
