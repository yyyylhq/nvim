vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.cmd.colorscheme("catppuccin")

vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = false

vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

vim.opt.signcolumn = "yes"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = false
vim.opt.cindent = false

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.autoread = true

vim.opt.list = true
vim.opt.listchars = {
    extends = "❯",
    precedes = "❮",
    -- space = "˽",
    tab = "▸-" ,
    trail = "˽" ,
    lead = "˽",
    eol = "↲"
}

