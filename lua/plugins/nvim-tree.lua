return {
    "nvim-tree/nvim-tree.lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    keys = {
        { "<leader>nt", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
    },

    -- local function my_on_attach(bufnr)
    --     local api = require("nvim-tree.api")
    --
    --     local function opts(desc)
    --         return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    --     end
    --
    --     api.config.mappings.default_on_attach(bufnr)
    --
    --     vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent,        opts("Up"))
    --     vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))
    -- end

    opts = {
        hijack_cursor = false,
        auto_reload_on_write = true,

        actions = {
            open_file = {
                quit_on_open = false,
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

        -- on_attach = my_on_attach,
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
            vim.keymap.del("n", "I", { buffer = bufnr })
            vim.keymap.del("n", "H", { buffer = bufnr })

            vim.keymap.set("n", "<C-o>", api.node.open.replace_tree_buffer, opts("Open: In Place"))
            vim.keymap.set("n", "L", api.tree.toggle_gitignore_filter, opts("Toggle Filter: Git Ignore"))
            vim.keymap.set("n", "gh", api.tree.toggle_hidden_filter, opts("Toggle Filter: Dotfiles"))
            vim.keymap.set("n", "ge", api.fs.rename_basename, opts("Rename: Basename"))
            vim.keymap.set("n", "gE", api.tree.expand_all, opts("Expand All"))


            -- 可在这里继续添加你的其他映射
            -- 例如添加Colemak布局的移动映射
            -- vim.keymap.set("n", "n", api.node.navigate.down, opts("Move down"))
            -- vim.keymap.set("n", "e", api.node.navigate.up, opts("Move up"))
            -- vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close parent"))
            -- vim.keymap.set("n", "i", api.node.open.edit, opts("Open"))
        end
    },
}

