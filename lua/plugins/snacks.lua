return {
    "folke/snacks.nvim",

    priority = 1000,
    lazy = false,

    opts = {
        animate = {
            duration = 20, -- ms per step
            easing = "linear",
            fps = 60,
        },

        bigfile = {
            enabled = true,
            notify = true, -- 检测到大文件时显示通知
            size = 1.5 * 1024 * 1024, -- 1.5MB（文件大小阈值）
            line_length = 1000, -- 平均行长度（对压缩文件有用）

            -- 检测到大文件时启用或禁用某些功能
            ---@param ctx {buf: number, ft:string}
            setup = function(ctx)
                if vim.fn.exists(":NoMatchParen") ~= 0 then
                  vim.cmd([[NoMatchParen]])
                end
                Snacks.util.wo(0, { foldmethod = "manual", statuscolumn = "", conceallevel = 0 })
                vim.b.minianimate_disable = true
                vim.schedule(
                    function()
                        if vim.api.nvim_buf_is_valid(ctx.buf) then
                            vim.bo[ctx.buf].syntax = ctx.ft
                        end
                    end
                )
            end,
        },

        dashboard = { enabled = true},
        -- dashboard = { enabled = true, example = "github" },

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

        notifier = {
            enabled = true,
            timeout = 7000,
        },

        quickfile = { enabled = true },

        scroll = { enabled = true },

        statuscolumn = {
            enabled = false,  -- 启用 snacks 的 statuscolumn 增强
        },

        -- win = { enabled = true, },
        -- win = {
        --     show = true,
        --     fixbuf = true,
        --     relative = "editor",
        --     position = "float",
        --     minimal = true,
        --     wo = {
        --         winhighlight = "Normal:SnacksNormal,NormalNC:SnacksNormalNC,WinBar:SnacksWinBar,WinBarNC:SnacksWinBarNC",
        --     },
        --     bo = {},
        --     keys = {
        --         q = "close",
        --     },
        -- },

        words = { enabled = true },
    },
}
