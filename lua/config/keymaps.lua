-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
-- local map = vim.keymap.set
-- map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })

local wk = require('which-key')
wk.add({

  { '<leader>cp', '<cmd>let @+ = expand("%:t")<cr>', desc = 'Copy filename' },
  {
    '<leader>cb',
    function()
      vim.b.x = not vim.b.x
      require('cmp').setup.buffer({ enabled = not vim.b.x })
    end,
    desc = 'Toggle Autocomplete',
  },
  { '<leader>tC', '<cmd>TestFile<cr>', desc = 'Run Vim-test(cucumber)' },
  { '<leader>tc', '<cmd>TestNearest -strategy=neovim<cr>', desc = 'Run Nearest test' },
  { '<leader>ct', '<cmd>EasyAlign*|<cr>', desc = 'Table Align', mode = 'v' },
})
