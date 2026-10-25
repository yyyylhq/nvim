vim.loader.enable()

require("configs.options")
require("configs.keymaps")
require("configs.lsp")

vim.opt.foldmethod = "manual"

require("plugins.treesitter")
require("plugins.mason")
require("plugins.lualine")
require("plugins.vim-lastplace")
require("plugins.which-key")
require("plugins.gitsigns")
-- require("plugins.noice")
require("plugins.snacks")
require("plugins.blink")
