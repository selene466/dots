-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts_floaterm = { noremap = true, silent = true, desc = "Floaterm Toggle" }

vim.keymap.set("n", "<F1>", function()
  vim.cmd("stopinsert")
  vim.cmd("FloatermToggle")
end, opts_floaterm)

vim.keymap.set("i", "<F1>", function()
  vim.cmd("stopinsert")
  vim.cmd("FloatermToggle")
end, opts_floaterm)

vim.keymap.set("t", "<F1>", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "t", true)
  vim.cmd("FloatermToggle")
end, opts_floaterm)
