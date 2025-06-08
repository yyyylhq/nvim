-- return {
--     "mason-org/mason-lspconfig.nvim",
--
--     opts = {
--         automatic_enable = true,
--
--         ensure_installed = {},
--     },
--
--     dependencies = {
--         {
--             "mason-org/mason.nvim",
--             opts = {
--                 ui = {
--                     border = "rounded",
--                     backdrop = 40,
--                     icons = {
--                         package_installed = "✓",
--                         package_pending = "➜",
--                         package_uninstalled = "✗",
--                     },
--                 },
--             },
--         },
--
--         "neovim/nvim-lspconfig",
--     }
-- }

return {
    "mason-org/mason.nvim",

    opts = {
        ui = {
            border = "rounded",

            backdrop = 40,

            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
}

