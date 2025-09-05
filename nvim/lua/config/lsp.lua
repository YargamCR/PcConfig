-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "tsserver", "clangd" }, -- Example: Install pyright, tsserver, and clangd
})

-- Configure LSP servers
local lspconfig = require("lspconfig")

lspconfig.pyright.setup({}) -- Setup Pyright for Python
lspconfig.tsserver.setup({}) -- Setup TypeScript server
lspconfig.clangd.setup({}) -- Setup Clangd for C/C++

-- Additional LSP settings can be added here (e.g., custom LSP handlers)
