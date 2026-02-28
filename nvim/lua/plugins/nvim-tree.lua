return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      filters = {
        custom = { ".DS_Store", ".git", ".idea", "__pycache__" },
      },
      view = {
        width = 30,
      },
      renderer = {
        hidden_display = "all",
      },
      git = {
        ignore = false,
      },
    })

    vim.keymap.set("n", "<F9>", ":NvimTreeToggle<CR>", { silent = true })

    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        require("nvim-tree.api").tree.open()
      end,
    })
  end,
}
