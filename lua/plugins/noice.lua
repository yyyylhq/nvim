vim.pack.add(
    {
        {
            src = "https://github.com/MunifTanjim/nui.nvim",
        },
        {
            src = "https://github.com/rcarriga/nvim-notify",
        },
        {
            src = "https://github.com/folke/noice.nvim",
            name = "noice"
        }
    },
    {
        confirm = true,
        load = true
    }
)

require("noice").setup({
    presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
    },
})
