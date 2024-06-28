-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use 4 spaces for indentation by default
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

-- Set literal tab characters to 8-width to make them more obvious
vim.opt.expandtab = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Vertical guidelines/rulers
vim.opt.colorcolumn = { 80, 120 }
