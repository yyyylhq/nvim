vim.pack.add(
    {
        {
            src = "https://github.com/mason-org/mason.nvim",
            name = "mason"
        }
    },
    {
        confirm = true,
        load = true
    }
)

require("mason").setup({})
