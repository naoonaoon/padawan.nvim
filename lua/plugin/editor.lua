vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
    { src = "https://github.com/folke/zen-mode.nvim" },
})

-- Support Editing
require("mini.pairs").setup()
require("mini.diff").setup({
    view = { style = "sign" },
})
require("mini.indentscope").setup()
require("mini.completion").setup()
