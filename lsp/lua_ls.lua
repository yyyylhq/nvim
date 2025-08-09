return {
    cmd = { "lua-language-server" },

    filetypes = { "lua" },

    root_markers = {
        ".luarc.json",
        ".luarc.jsonc",
        ".luacheckrc",
        ".stylua.toml",
        "stylua.toml",
        "selene.toml",
        "selene.yml",
        ".git",
    },
    capabilities = {
        textDocument = {
            completion = {
                editsNearCursor = true,
            },
        },

        offsetEncoding = {
            'utf-8',
            'utf-16',
        },
    },
    ---@param client vim.lsp.Client
    ---@param init_result ClangdInitializeResult
    on_init = function(client, init_result)
        if init_result.offsetEncoding then
            client.offset_encoding = init_result.offsetEncoding
        end
    end,

    on_attach = function(_, bufnr)
        vim.api.nvim_buf_create_user_command(
            bufnr,
            'LspClangdSwitchSourceHeader',
            function()
                switch_source_header(bufnr)
            end,
            {
                desc = 'Switch between source/header',
            }
        )

        vim.api.nvim_buf_create_user_command(
            bufnr,
            'LspClangdShowSymbolInfo',
            function()
                symbol_info()
            end,
            {
                desc = 'Show symbol info',
            }
        )
    end,
}

