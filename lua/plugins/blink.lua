vim.pack.add(
    {
        {
            src = "https://github.com/saghen/blink.lib",
        },
        {
            src = "https://github.com/saghen/blink.cmp",
            name = "blink"
        }
    },
    {
        confirm = true,
        load = true
    }
)

require("blink.cmp").setup({
    keymap = {
        preset = "default",

        ["<C-h>"] = { "show", "show_documentation", "hide_documentation" },
    },

    completion = {
        menu = {
            auto_show = true,
        },

        documentation = {
            auto_show = true,
            auto_show_delay_ms = 500,
        },

        list = {
            selection = {
                preselect = false,
                auto_insert = true,
            },
        },
    },

    sources = {
        default = {
            "lsp",
            "path",
            "snippets",
            "buffer",
        },
    },

    fuzzy = {
        implementation = "prefer_rust",
    },
})
