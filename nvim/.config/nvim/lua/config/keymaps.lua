-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>tr", function()
  local filepath = vim.fn.expand("%:p")

  local cmd = string.format("yarn tsx -i -e \"import('file://%s').then(m => Object.assign(global, m))\"", filepath)

  vim.cmd("vsplit | term " .. cmd)
  vim.cmd("startinsert")
end, { desc = "Load current TS file in tsx REPL" })
