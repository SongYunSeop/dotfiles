return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "onedark",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      tabline = {
        lualine_a = { "buffers" },
        lualine_z = { "tabs" },
      },
    })

    -- Buffer navigation keymaps (replacing airline tab select)
    for i = 1, 9 do
      vim.keymap.set("n", "<leader>" .. i, ":LualineBuffersJump " .. i .. "<CR>", { silent = true })
    end
    vim.keymap.set("n", "H", ":bprevious<CR>", { silent = true })
    vim.keymap.set("n", "L", ":bnext<CR>", { silent = true })
  end,
}
