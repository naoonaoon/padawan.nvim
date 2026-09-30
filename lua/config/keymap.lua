-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffer
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", {
    desc = "Close Buffer",
})

vim.keymap.set("n", "H", "<cmd>bprevious<cr>", {
    desc = "Previous Buffer",
})

vim.keymap.set("n", "L", "<cmd>bnext<cr>", {
    desc = "Next Buffer",
})

-- Information
vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.open_float()
end, { desc = "Show Diagnostic Details" })
