return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "sqlls", "yamlls", "pyright"}, -- automatically install lsp

  },
}
