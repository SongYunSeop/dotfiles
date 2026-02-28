-- Custom highlight overrides
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "Visual", { reverse = true })
    vim.api.nvim_set_hl(0, "Search", { fg = "#151718", bg = "#55b5db" })
  end,
})

-- JSON beautify function
vim.cmd([[
function! JsonBeautify()
    execute '%!python3 -m json.tool'
    set syntax=json
endfunction
]])
