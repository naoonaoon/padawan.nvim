-- Install
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/stevearc/conform.nvim" },
})

-- Read Config
local language = require("config.language")

-- Build plugin configuration from language definitions
local servers, parsers, file_types, formatters = {}, {}, {}, {}
for language_name, config in pairs(language) do
    local file_type = config.file_type
    servers[#servers + 1] = config.server
    parsers[#parsers + 1] = config.parser or language_name
    file_types[#file_types + 1] = file_type
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
