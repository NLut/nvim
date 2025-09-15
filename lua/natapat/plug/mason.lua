-- UI to download lsp
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Specify LSP server to nvim-lspconfig from installed via mason. 
require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer", "ts_ls" }
})
