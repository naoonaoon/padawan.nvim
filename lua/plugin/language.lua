-- Install
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/stevearc/conform.nvim" },
})

-- Read Config
local language = require("config.language")

-- Read Language Server
local servers = vim.iter(language):map(function(_, config)
    return config.server
end):totable()

-- Read Tree-Sitter
local parsers = vim.iter(language):map(function(file_type, config)
    return config.parser or file_type
end):totable()

-- Read File Type
local file_types = vim.iter(language):map(function(_, config)
    return config.file_type
end):totable()

-- Read Formatter
local formatters = vim.iter(language):fold({}, function(result, _, config)
    result[config.file_type] = config.formatters
    return result
end)

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
