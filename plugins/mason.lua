return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "sqlls", "yamlls", "pyright", "pylint"}, -- automatically install lsp

  },
}
