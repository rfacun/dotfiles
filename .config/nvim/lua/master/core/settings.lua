-- Unify the clipboard
vim.cmd("set clipboard+=unnamedplus")

-- Visual
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guicursor = ""
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.colorcolumn = "80"
vim.opt.wrap = false

-- Movement
vim.opt.scrolloff = 3
vim.opt.sidescrolloff = 3
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
