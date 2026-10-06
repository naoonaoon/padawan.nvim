-- Install
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/stevearc/conform.nvim" },
})

-- Read Config
local languages = vim.tbl_values(require("config.language"))
local function pluck(key)
    return vim.iter(languages)
        :map(function(l)
            return l[key]
        end)
        :flatten()
        :totable()
end
local servers = pluck("servers")
local parsers = pluck("parsers")
local filetypes = pluck("filetypes")
local formatters = vim.iter(languages):fold({}, function(acc, l)
    for _, filetype in ipairs(l.filetypes) do
        acc[filetype] = l.formatters
    end
    return acc
end)

-- LSP Manager
require("mason").setup()
vim.lsp.enable(servers)

-- Tree-Sitter
require("nvim-treesitter").install(parsers)
vim.api.nvim_create_autocmd("FileType", {
    pattern = filetypes,
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
