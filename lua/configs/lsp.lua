vim.diagnostic.config({
    underline = true,
    -- virtual_text = true,
    -- signs = true,
    virtual_text = {
        spacing = 2,
        source = "if_many",
        prefix = "●",
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "✘",
            [vim.diagnostic.severity.WARN]  = "▲",
            [vim.diagnostic.severity.INFO]  = "●",
            [vim.diagnostic.severity.HINT]  = "◆",
        },
    },
    update_in_insert = true,
    severity_sort = true,
})

vim.api.nvim_create_autocmd(
    {
        "LspAttach"
    },

    {
        group = vim.api.nvim_create_augroup("my-lsp-attach", {
            clear = true,
        }),

        callback = function(event)
            local map = function(lhs, rhs, desc)
                vim.keymap.set("n", lhs, rhs, {
                    buffer = event.buf,
                    desc = desc,
                })
            end

            map("gd", vim.lsp.buf.definition, "LSP：跳转到定义")
            map("gD", vim.lsp.buf.declaration, "LSP：跳转到声明")
            map("gr", vim.lsp.buf.references, "LSP：查找引用")
            map("K", vim.lsp.buf.hover, "LSP：查看文档")
            map("<leader>rn", vim.lsp.buf.rename, "LSP：重命名")

            vim.keymap.set({ "n", "x" },
                "<leader>ca",
                vim.lsp.buf.code_action, {
                    buffer = event.buf,
                    desc = "LSP：代码操作",
                }
            )

            map("<leader>f",
                function()
                    vim.lsp.buf.format({ async = true })
                end,
                "LSP：格式化"
            )
        end,
    }
)

vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
