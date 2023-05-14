require("mason").setup {
    ui = {
        icons = {
            package_installed = "✓"
        }
    }
}

require("mason-lspconfig").setup {
    ensure_installed = { 'pyright', 'rust_analyzer', 'lua_ls' },
}
