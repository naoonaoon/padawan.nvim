vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
    { src = "https://github.com/folke/zen-mode.nvim" },
})

-- Support Editing
require("mini.pairs").setup()
require("mini.diff").setup()
require("mini.indentscope").setup()
require("mini.completion").setup()

-- Support Git
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {
    desc = "Open Lazygit",
})

-- Zne Mode
require("zen-mode").setup()
vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<cr>", {
    desc = "Boot Zen Mode",
})
