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
-- vim.keymap.set({ "n" }, "s", "d", { silent = true })
-- vim.keymap.set({ "n" }, "ss", "dd", { silent = true })
-- vim.keymap.set({ "n" }, "S", "D", { silent = true })

vim.keymap.set({ "n", "x", "o" }, "f", "<Plug>(leap-forward-to)")
vim.keymap.set({ "n", "x", "o" }, "F", "<Plug>(leap-backward-to)")
vim.keymap.set({ "n", "x", "o" }, "gf", "<Plug>(leap-cross-window)")
