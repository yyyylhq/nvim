vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "python",
        callback = function(ev)
            vim.treesitter.start(ev.buf, "python")
        end,
    }
)
