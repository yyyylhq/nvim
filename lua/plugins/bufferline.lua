return {
    "akinsho/bufferline.nvim",

    version = "*",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    opts = {
        options = {
            mode = "buffers", -- 你也可以用 "tabs"

            diagnostics = "nvim_lsp",

            show_buffer_close_icons = true,

            show_close_icon = false,

            separator_style = "thin", -- 可选："slant", "thick", "thin", { 'left', 'right' }
        },
    },
}
