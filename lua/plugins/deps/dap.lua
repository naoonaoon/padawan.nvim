local dap = require("nvim-dap")

vim.fn.sign.define("DapBreakpoint", {
    text = "⚫︎",
    texthl = "DiagnosticSignError",
})

vim.fn.sign.define("DapStopped", {
    text = "▶︎",
    texthl = "DiagnosticSignWarn",
    linehl = "Visual",
})
