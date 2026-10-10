vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
})

-- Support Editing
require("mini.pairs").setup()
require("mini.completion").setup()

-- Support Reading
require("mini.diff").setup({
    view = { style = "sign" },
})
require("mini.indentscope").setup()
