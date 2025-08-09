return {
    "akinsho/bufferline.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    opts = {
        options = {
            mode = "tabs",
            -- mode = "buffers",

            diagnostics = "nvim_lsp",

            show_buffer_icons = true,
            show_buffer_close_icons = false,
            show_close_icon = false,

            indicator = {
                style = "underline",
            },

            hover = {
                enabled = true,
                delay = 200,
                reveal = {'close'}
            },

            separator_style = "slant",

            -- numbers = "buffer_id", -- "buffer_id" | "ordinal" | "none"
            numbers = function(opts)
                return string.format('%s|%s', opts.id, opts.lower(opts.ordinal))
            end,

            left_trunc_marker = "",  -- 左侧标记
            right_trunc_marker = "",  -- 右侧标记
            buffer_close_icon = "",
            modified_icon = "●",
            close_icon = "",
        },

        -- highlights = {
            -- indicator_visible = {
            --     fg = '<colour-value-here>',
            --     bg = '<colour-value-here>',
            -- },
            -- indicator_selected = {
            --     fg = '<colour-value-here>',
            --     bg = '<colour-value-here>',
            -- },
        -- },
    },
}
