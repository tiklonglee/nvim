-- Set map leader for extra key combinations
vim.g.mapleader = ","

-- Set number
vim.opt.number = true
vim.opt.relativenumber = true

-- Set indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cino = 'N-s'

-- Search Setting
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Undo Setting
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true

-- Split Setting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Set various details
vim.opt.autochdir = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamed,unnamedplus"
vim.g.netrw_dirhistmax = 0
