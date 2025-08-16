-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Visual mode mapping: Yank and move cursor to end of selection
vim.api.nvim_set_keymap("x", "y", "y`]", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "p", "p`]", { noremap = true, silent = true })

-- Map CapsLock to behave like backtick (`) in normal/visual mode
vim.keymap.set({ "n", "v" }, "<CapsLock>", "`", { noremap = true, silent = true })
