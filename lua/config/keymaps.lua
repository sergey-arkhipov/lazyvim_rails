-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = vim.keymap.set

-- Toggle autocomplete
map('n', '<leader>cb', function()
  vim.b.x = not vim.b.x
  require('cmp').setup.buffer({ enabled = not vim.b.x })
end, { desc = 'Toggle Autocomplete' })
--
-- Add map for cucumber tests
map('n', '<leader>tC', '<cmd>TestFile<cr>', { desc = 'Run Vim-test(cucumber)' })
map('n', '<leader>tc', '<cmd>TestNearest<cr>', { desc = 'Run Nearest test' })
-- Надо сделать функцию для передачи параметров выделения
-- map('v', '<leader>ct', "<cmd>'<,'>EasyAlign *|<cr>", { desc = 'Table Align' })

-- Add set UI background transparent
map(
  'n',
  '<leader>ue',
  function() require('config.transparency').setBackgroundTransparent() end,
  { desc = 'Enable Transparency' }
)
-- Markdown preview toggle
map('n', '<leader>cm', '<cmd>RenderMarkdown toggle <cr>', { desc = 'Toggle markdown preview' })
--
-- Copy current buffer name and full path to clipboard
map('n', '<leader>cP', function()
  local path = vim.fn.expand('%:p')
  vim.fn.setreg('+', path)
  print(path)
end, { desc = 'Yank filepath' })
map('n', '<leader>cp', function()
  local path = vim.fn.expand('%')
  vim.fn.setreg('+', path)
  print(path)
end, { desc = 'Yank filename' })
