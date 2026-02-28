return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()
    -- Ctrl+/ to toggle comment (like nerdcommenter)
    vim.keymap.set("n", "<C-_>", function() require("Comment.api").toggle.linewise.current() end)
    vim.keymap.set("v", "<C-_>", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
  end,
}
