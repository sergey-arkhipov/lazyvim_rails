-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = vim.keymap.set
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
  { '<leader>tc', '<cmd>TestNearest<cr>', desc = 'Run Nearest test' },
  { '<leader>ct', '<cmd>EasyAlign*|<cr>', desc = 'Table Align', mode = 'v' },
})

-- Add set UI background transparent
map(
  'n',
  '<leader>ue',
  function() require('config.transparency').setBackgroundTransparent() end,
  { desc = 'Enable Transparency' }
)

-- -- Tests
-- map('n', '<leader>t', '', { desc = 'Tests' })
-- map('n', '<leader>tt', function() require('neotest').run.run(vim.fn.expand('%')) end, { desc = 'Run File' })
-- map('n', '<leader>tT', function() require('neotest').run.run(vim.uv.cwd()) end, { desc = 'Run All Files' })
-- map('n', '<leader>tr', function() require('neotest').run.run() end, { desc = 'Run Nearest' })
-- map('n', '<leader>tl', function() require('neotest').run.run_last() end, { desc = 'Run Last' })
-- map('n', '<leader>ts', function() require('neotest').summary.toggle() end, { desc = 'Toggle Summary' })
-- map(
--   'n',
--   '<leader>to',
--   function() require('neotest').output.open({ enter = true, auto_close = true }) end,
--   { desc = 'Show Output' }
-- )
-- map('n', '<leader>tO', function() require('neotest').output_panel.toggle() end, { desc = 'Toggle Output' })
-- map('n', '<leader>tS', function() require('neotest').run.stop() end, { desc = 'Stop' })
-- map('n', '<leader>tw', function() require('neotest').watch.toggle(vim.fn.expand('%')) end, { desc = 'Toggle Watch' })
