local g = vim.g
local km = vim.keymap

-- Leader
g.mapleader = " "
g.maplocalleader = " "

-- Explorer
vim.keymap.set("n", "<leader>e", "<cmd>Fyler<cr>", {
    desc = "Open Explorer",
})

-- Buffer
km.set("n", "<leader>bd", "<cmd>bd<cr>", {
    desc = "Close Buffer",
})
km.set("n", "H", "<cmd>bprevious<cr>", {
    desc = "Previous Buffer",
})
km.set("n", "L", "<cmd>bnext<cr>", {
    desc = "Next Buffer",
})

-- Information
km.set("n", "<leader>d", function()
    vim.diagnostic.open_float()
end, { desc = "Show Diagnostic Details" })

-- Support Git
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {
    desc = "Open Lazygit",
})

-- Zne Mode
vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<cr>", {
    desc = "Boot Zen Mode",
})
