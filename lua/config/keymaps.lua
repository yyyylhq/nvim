vim.keymap.set({ "i" }, "nn", "<Esc>", { silent = true })

vim.keymap.set({ "n", "v" }, "n", "gj", { silent = true })
vim.keymap.set({ "n", "v" }, "e", "gk", { silent = true })
vim.keymap.set({ "n", "v" }, "i", "l", { silent = true })

vim.keymap.set({ "n", "v" }, "N", "5gj", { silent = true })
vim.keymap.set({ "n", "v" }, "E", "5gk", { silent = true })

vim.keymap.set({ "n", "v" }, "H", "0", { silent = true })
vim.keymap.set({ "n", "v" }, "I", "$", { silent = true })

vim.keymap.set({ "n", "v" }, "l", "i", { silent = true })
vim.keymap.set({ "n", "v" }, "L", "I", { silent = true })
vim.keymap.set({ "n", "v" }, "j", "n", { silent = true })
vim.keymap.set({ "n", "v" }, "J", "N", { silent = true })

vim.keymap.set({ "n" }, "cH", "c0", { silent = true })

vim.keymap.set({ "n", "v" }, "<C-w>n", "<C-w>j", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-w>e", "<C-w>k", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-w>i", "<C-w>l", { silent = true })

vim.keymap.set({ "n" }, "<C-s>", ":w<CR>", { silent = true })
vim.keymap.set({ "i" }, "<C-s>", "<ESC>:w<CR>i", { silent = true })

vim.keymap.set(
    { "n" },
    "<leader>bid",
    function()
<<<<<<< HEAD
        local bufid = vim.api.nvim_get_current_buf()
        vim.notify("Current buffer ID：" .. bufid)
    end,
    {
        desc = "Show current buffer ID",
    }
=======
        local winid = vim.api.nvim_get_current_buf()

        print("Current buffer ID：" .. winid)
        -- vim.notify("Current buffer ID：" .. winid)
    end,
    { desc = "Show current buffer ID" }
>>>>>>> 1604672f25ec123ee6fb37c1a8d2998d41604ddf
)

vim.keymap.set(
    { "n" },
    "<leader>wid",
    function()
        local winid = vim.api.nvim_get_current_win()
<<<<<<< HEAD
        vim.notify("Current win ID：" .. winid)
    end,
    {
        desc = "Show current win ID",
    }
=======

        print("Current window ID：" .. winid)
        -- vim.notify("Current window ID：" .. winid)
    end,
    { desc = "Show current window ID" }
>>>>>>> 1604672f25ec123ee6fb37c1a8d2998d41604ddf
)
