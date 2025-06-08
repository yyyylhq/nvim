return {
    "folke/tokyonight.nvim",

    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins

    opts = function()
        vim.cmd([[colorscheme tokyonight]])
    end,
}
