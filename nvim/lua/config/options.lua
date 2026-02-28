local opt = vim.opt

-- General
opt.history = 500
vim.g.mapleader = ","
vim.g.maplocalleader = ","
opt.ruler = true
opt.showmatch = true
opt.matchtime = 2
opt.number = true
opt.relativenumber = true
opt.iminsert = 0
opt.imsearch = 0
opt.encoding = "utf-8"
opt.fileencodings = { "utf-8", "cp949" }
opt.wrap = false
opt.modeline = false
opt.swapfile = false
opt.backup = false
vim.cmd("language en_US")

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.backspace = { "indent", "eol", "start" }

-- Indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
vim.cmd("filetype plugin indent on")

-- Color
opt.termguicolors = true
opt.syntax = "on"

-- Clipboard
opt.clipboard = "unnamed"
