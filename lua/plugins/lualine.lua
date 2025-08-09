return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    opts = {
        options = {
            -- theme = "palenight",
            theme = "auto",

            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
        },

        sections = {
            lualine_a = {'mode'},
            -- lualine_a = {'mode', 'buffers', 'tabs'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename', 'lsp_status', 'overseer'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },

        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
    },
}

