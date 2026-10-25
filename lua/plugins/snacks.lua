vim.pack.add(
    {
        {
            src = "https://github.com/folke/snacks.nvim",
            name = "snacks"
        }
    },
    {
        confirm = true,
        load = true
    }
)

require("snacks").setup({
    animate = {
        duration = 20, -- ms per step
        easing = "linear",
        fps = 60,
    },
    -- dashboard = { enabled = true },
    indent = {
        indent = {
            priority = 1,

            enabled = true, -- enable indent guides

            -- char = "▸",
            char = "│",

            only_scope = false, -- only show indent guides of the scope
            only_current = false, -- only show indent guides in the current window

            hl = "SnacksIndent",
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
            enabled = true,
            priority = 200,

            char = "│",
            underline = true,

            only_current = false,
            hl = "SnacksIndentScope",
        },

        chunk = {
            enabled = false,

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

})
