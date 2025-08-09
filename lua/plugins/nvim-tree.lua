return {
    "nvim-tree/nvim-tree.lua",

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
            width = 30,
            side = "left",
            preserve_window_proportions = true,
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
    },
}
