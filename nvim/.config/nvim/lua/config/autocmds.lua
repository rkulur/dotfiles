-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Fix command-line window height
vim.api.nvim_create_autocmd("CmdwinEnter", {
  callback = function()
    vim.cmd("resize 1") -- set height to 1 lines
  end,
})
