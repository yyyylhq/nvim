return {
    "folke/snacks.nvim",

    priority = 1000,

    lazy = false,

    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true},
        explorer = { enabled = true },

        indent = {
            indent = {
                priority = 1,

                enabled = true, -- enable indent guides

                -- char = "▸",
                char = "│",

                only_scope = false, -- only show indent guides of the scope
                only_current = false, -- only show indent guides in the current window

                hl = "SnacksIndent",
                ---@type string|string[] hl groups for indent guides
                -- can be a list of hl groups to cycle through
                -- hl = {
                --     "SnacksIndent1",
                --     "SnacksIndent2",
                --     "SnacksIndent3",
                --     "SnacksIndent4",
                --     "SnacksIndent5",
                --     "SnacksIndent6",
                --     "SnacksIndent7",
                --     "SnacksIndent8",
                -- },
            },

            animate = {
                --enabled = vim.fn.has("nvim-0.10") == 1,
                enabled = true,

                --style = "out",
                style = "up_down",

                easing = "linear",

                duration = {
                    step = 20, -- ms per step
                    total = 500, -- maximum duration
                },
            },

            scope = {
                enabled = false,
                priority = 200,

                char = "│",
                underline = true,

                only_current = false,
                hl = "SnacksIndentScope",
            },

            chunk = {
                enabled = true,

                only_current = false,
                priority = 200,
                hl = "SnacksIndentChunk",
                -- hl = {
                --     "SnacksIndentChunk1",
                --     "SnacksIndentChunk2",
                --     "SnacksIndentChunk3",
                --     "SnacksIndentChunk4",
                --     "SnacksIndentChunk5",
                --     "SnacksIndentChunk6",
                --     "SnacksIndentChunk7",
                --     "SnacksIndentChunk8",
                -- },
                char = {
                    -- corner_top = "┌",
                    -- corner_bottom = "└",
                    corner_top = "╭",
                    corner_bottom = "╰",
                    horizontal = "─",
                    vertical = "│",
                    arrow = ">",
                },
            },
        },

        input = {
            enabled = true,

            icon = " ",
            icon_hl = "SnacksInputIcon",
            icon_pos = "left",
            prompt_pos = "title",
            win = { style = "input" },
            expand = true,
        },

        scope = { enabled = true },

        picker = { enabled = true },
        notifier = { enabled = true },

        quickfile = { enabled = true },

        scroll = { enabled = true },

        statuscolumn = { enabled = true },

        words = { enabled = true },
    },
}
