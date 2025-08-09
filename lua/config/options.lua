-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.o.number = true
vim.o.numberwidth = 4
vim.o.relativenumber = true

vim.o.cursorline = true
vim.o.cursorcolumn = false

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.autoindent = false
vim.o.cindent = false

vim.o.backup = false
vim.o.swapfile = false

vim.o.autoread = true

vim.o.list = true
vim.opt.listchars = {
    extends = '❯',
    precedes = '❮',
    tab = '▸-' ,
    trail = '˽' ,
    lead = '˽',
    eol = '↲'
}
