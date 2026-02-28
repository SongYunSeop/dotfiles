local map = vim.keymap.set

-- Edit/reload config
map("n", "<leader>vi", ":tabe ~/.config/nvim/init.lua<CR>", { desc = "Edit init.lua" })
map("n", "<leader>src", ":source ~/.config/nvim/init.lua<CR>", { desc = "Reload config" })

-- Toggle wrap
map("n", "<leader>b", ":set wrap!<CR>")

-- Edit zshrc
map("n", "<leader>zsh", ":tabe ~/.zshrc<CR>", { desc = "Edit zshrc" })

-- Quit
map({ "n", "v" }, "<leader>q", "<ESC><ESC>:q<CR>")
map({ "n", "v" }, "<leader>!", "<ESC><ESC>:q!<CR>")

-- Save
map("i", "<F2>", "<ESC><ESC>:w<CR>")
map("n", "<F2>", "<ESC><ESC>:w<CR>")
map("i", "<leader>w", "<ESC><ESC>:w<CR>")
map("n", "<leader>w", "<ESC><ESC>:w<CR>")

-- Toggle line numbers
map("n", "<F3>", "<ESC>:set nu! relativenumber!<CR>")

-- jk to escape
map("i", "jk", "<ESC>")
map("i", "JK", "<ESC>")
map("i", "Jk", "<ESC>")
map("i", "jK", "<ESC>")

-- Korean keyboard escape
map("i", "ㅓㅏ", "<ESC>")

-- Keep selection when indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

map("v", "<BS>", "<DEL>")

-- ; to :
map("n", ";", ":")

-- Window navigation
map("n", "<C-j>", "<C-W>j")
map("n", "<C-k>", "<C-W>k")
map("n", "<C-h>", "<C-W>h")
map("n", "<C-l>", "<C-W>l")

-- Clipboard
map("n", "<leader>y", '"*y')
map("v", "<leader>y", '"*y')
map("n", "<leader>p", '"*p')
map("v", "<leader>p", '"*p')
map("n", "<leader>co", 'ggVG"*y')

-- Whitespace
map("n", "<leader>rw", ":StripWhitespace<CR>")

-- Buffer navigation
map("n", "<leader>bq", ":bp <BAR> bd #<CR>")
map("n", "<leader>bn", ":enew<CR>")
map("n", "<C-S-n>", ":enew<CR>")
map("n", "<C-S-q>", ":bp <BAR> bd #<CR>")

-- fzf
map("n", "<C-p>", function() require("fzf-lua").files() end, { desc = "Find files" })
map("n", "<leader>ag", function() require("fzf-lua").live_grep() end, { desc = "Live grep" })
map("n", "<leader>aw", function() require("fzf-lua").grep_cword() end, { desc = "Grep word under cursor" })

-- JSON beautify
map("n", "<leader>json", ":call JsonBeautify()<CR>")
