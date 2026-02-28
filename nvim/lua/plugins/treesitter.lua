return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash", "c", "css", "dockerfile", "go", "html",
      "javascript", "json", "lua", "markdown", "python",
      "rust", "toml", "tsx", "typescript", "yaml",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
