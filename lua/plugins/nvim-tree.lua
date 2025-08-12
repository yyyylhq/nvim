return {
    "nvim-tree/nvim-tree.lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    keys = {
        { "<leader>nt", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
    },

    opts = {
        hijack_cursor = false,
        auto_reload_on_write = true,

        actions = {
            open_file = {
<<<<<<< HEAD
                -- quit_on_open = true,
=======
                quit_on_open = false,
>>>>>>> 1604672f25ec123ee6fb37c1a8d2998d41604ddf
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
            side = "left",
            preserve_window_proportions = true,

            float = {
                enable = true,
                quit_on_focus_loss = true,
                open_win_config = {
                    relative = "editor",
                    border = "rounded",
                    width = 30,
                    height = 30,
                    row = 1,
                    col = 1,
                },
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
            vim.keymap.del("n", "e", { buffer = bufnr })
            vim.keymap.del("n", "E", { buffer = bufnr })
            vim.keymap.del("n", "I", { buffer = bufnr })
            vim.keymap.del("n", "H", { buffer = bufnr })

            vim.keymap.set("n", "<C-o>", api.node.open.replace_tree_buffer, opts("Open: In Place"))
            vim.keymap.set("n", "L", api.tree.toggle_gitignore_filter, opts("Toggle Filter: Git Ignore"))
            vim.keymap.set("n", "gh", api.tree.toggle_hidden_filter, opts("Toggle Filter: Dotfiles"))
            vim.keymap.set("n", "ge", api.fs.rename_basename, opts("Rename: Basename"))
            vim.keymap.set("n", "gE", api.tree.expand_all, opts("Expand All"))
        end
    },
}

