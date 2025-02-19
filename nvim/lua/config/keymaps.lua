-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Override Ctrl + / to toggle the terminal
-- vim.keymap.set("n", "<C-/>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })

-- Format on save
vim.api.nvim_set_keymap("n", "<C-Q>", "<cmd>Black<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })
