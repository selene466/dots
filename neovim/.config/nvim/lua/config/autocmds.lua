-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.api.nvim_set_hl(0, "Visual", { bg = "#FFFF24", fg = "#0D0D0D", bold = true })
    -- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1D1D1D" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#2E3C64", fg = "#FFFF24" })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#8484FF" })
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#8484FF" })
    vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#8484FF" })
  end,
})
