-- Install
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/stevearc/conform.nvim" },
})

local language = require("config.language")
local servers = {}
local parsers = {}
local file_types = {}
local formatters = {}

for file_type, config in pairs(language) do
    table.insert(servers, config.server)
    table.insert(parsers, config.parser)
    table.insert(file_types, config.file_type)
    formatters[file_type] = config.formatters
end

-- LSP Manager
require("mason").setup()

-- Enable LSP
vim.lsp.enable(servers)

-- Tree-Sitter
require("nvim-treesitter").install(parsers)
vim.api.nvim_create_autocmd("FileType", {
    pattern = file_types,
    callback = function()
        vim.treesitter.start()
    end,
})

-- Formatter
require("conform").setup({
    formatters_by_ft = formatters,
    format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
    },
})
