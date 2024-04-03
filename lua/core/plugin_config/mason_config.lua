require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd", "rust_analyzer", "jedi_language_server", "asm_lsp" },
}

-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").lua_ls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").jedi_language_server.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").asm_lsp.setup {}

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})