vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/FylerOrg/Fyler.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
})

-- Explorer
require("fyler").setup({
    kind = "floating",
    integrations = { icon = "mini_icons" },
})

-- Support Editing
require("mini.pairs").setup()
require("mini.completion").setup()

-- Support Reading
require("mini.diff").setup({
    view = { style = "sign" },
})
require("mini.indentscope").setup()
