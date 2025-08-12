return {
    "nvim-tree/nvim-tree.lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    keys = {
        { "<leader>nt", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
    },

    opts = {
        actions = {
            open_file = {
                -- quit_on_open = true,
            },
        },

        update_focused_file = {
            enable = true,
            update_cwd = true,
        },

        view = {
            number = true,
            relativenumber = true,
            width = 30,
            -- side = "left",
            side = "right",
            preserve_window_proportions = true,
            float = {
                enable = true,
                quit_on_focus_loss = true,
            },
        },

        renderer = {
            group_empty = true,
            highlight_git = true,
            icons = {
                show = {
                    folder_arrow = true,
                },
            },
        },

        sort = {
            sorter = "case_sensitive",
        },

        filters = {
            dotfiles = true,
        },

        on_attach = function(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return {
                    desc = "nvim-tree: " .. desc,
                    buffer = bufnr,
                    noremap = true,
                    silent = true,
                    nowait = true,
                }
            end

            api.config.mappings.default_on_attach(bufnr)

            vim.keymap.del("n", "e", { buffer = bufnr })
            vim.keymap.del("n", "E", { buffer = bufnr })
            -- vim.keymap.del("n", "i", { buffer = bufnr })
            vim.keymap.del("n", "I", { buffer = bufnr })
            vim.keymap.del("n", "H", { buffer = bufnr })
            -- vim.keymap.set("n", "n", api.node.navigate.down, opts("Move down"))
            -- vim.keymap.set("n", "e", api.node.navigate.up, opts("Move up"))
            -- vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close parent"))
            -- vim.keymap.set("n", "i", api.node.open.edit, opts("Open"))
        end
    },
}

