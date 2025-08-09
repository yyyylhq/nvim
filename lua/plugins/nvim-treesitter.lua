return {
    "nvim-treesitter/nvim-treesitter",

    -- version = false, -- last release is way too old and doesn't work on Windows
    --branch = "main",

    -- event = { "LazyFile", "VeryLazy" },
    event = "VeryLazy",

    main = "nvim-treesitter.configs",

    -- build = ":TSUpdate",

    -- lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
    -- lazy = false,

    -- cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },

    -- opts_extend = { "ensure_installed" },

    opts = {

        -- indent = {
        --     enable = true
        --     --enable = false
        -- },
        --
        ensure_installed = {
            "c",
            "cpp",
            "lua",
            "luadoc",
            "luap",
            "markdown",
            "markdown_inline",
            "python",
            "toml",
            "vim",
            "regex",
            "vimdoc",
            "xml",
            "bash",
            "yaml",
            "java",
        },

        sync_install = false,

        auto_install = true,

        ignore_install = {
            "javascript",
        },

        highlight = {
            enable = true,

            disable = function(lang, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,

            -- disable = {
            -- },

            additional_vim_regex_highlighting = false,
        },

        incremental_selection = {
            enable = true,

            keymaps = {
                init_selection = "<CR>",
                node_incremental = "<CR>",
                scope_incremental = "<CR>",
                node_decremental = "<BS>",
            },
        },

        -- indent = {
        --     enable = true,
        -- },

        -- textobjects = {
        --     move = {
        --         enable = true,
        --         goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
        --         goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
        --         goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
        --         goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
        --     },
        -- },
    },
}
