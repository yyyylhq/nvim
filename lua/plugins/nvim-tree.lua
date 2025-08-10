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
        actions = {
            open_file = {
                quit_on_open = true,
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

        -- on_attach = my_on_attach,
    },
}
