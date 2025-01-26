-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Set transparent background
local function augroup(name) return vim.api.nvim_create_augroup('lazyvim_' .. name, { clear = true }) end
--
-- vim.api.nvim_create_autocmd({ 'VimEnter' }, {
--   group = augroup('vimenter'),
--   callback = function()
--     vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
--   end,
-- })
vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  group = augroup('visualblock'),
  callback = function() vim.cmd('command! Vb :execute "normal! <C-v>"') end,
})
-- Autocommand to generate tags on file save
-- vim.cmd([[
--     autocmd BufWritePost * silent! !ctags -R .
-- ]])
-- Set filetype yaml for eruby-yaml
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufNewFile' }, {
  pattern = '*.yml',
  command = 'setlocal filetype=yaml',
})
