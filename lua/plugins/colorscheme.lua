-- return {
--     "folke/tokyonight.nvim",
--
--     lazy = false,
--     priority = 1000, -- make sure to load this before all the other start plugins
--
--     opts = function()
--         vim.cmd([[colorscheme tokyonight]])
--     end,
-- }

return {
    "catppuccin/nvim",

    priority = 1000,

    lazy = false,

    name = "catppuccin",


    opts = function()
        vim.cmd([[colorscheme catppuccin]])
    end,
}
