vim.pack.add(
    {
        {
            src = "https://github.com/folke/which-key.nvim",
            name = "which-key"
        }
    },
    {
        confirm = true,
        load = true
    }
)

-- 配置 which-key
require("which-key").setup({
    preset = "modern",
    delay = 300,
})
