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

wk.add({

  { '<leader>gl', group = 'Gitlab' },
  { '<leader>glC', require('gitlab').create_comment_suggestion, desc = 'Comment suggestion' },
  { '<leader>gla', group = 'Assignee' },
  { '<leader>glaa', require('gitlab').add_assignee, desc = 'Add assignee' },
  { '<leader>glad', require('gitlab').delete_assignee, desc = 'Delete assignee' },
  { '<leader>glc', require('gitlab').create_comment, desc = 'Comment' },
  { '<leader>gld', require('gitlab').toggle_discussions, desc = 'Toggle Discussions' },
  { '<leader>glo', require('gitlab').open_in_browser, desc = 'Open in browser' },
  { '<leader>glp', require('gitlab').pipeline, desc = 'Pipeline' },
  { '<leader>glr', require('gitlab').review, desc = 'Review' },
  { '<leader>gls', require('gitlab').summary, desc = 'Summary' },
  { '<leader>glw', group = 'Reviewer' },
  { '<leader>glwa', require('gitlab').add_reviewer, desc = 'Add Reviewer' },
  { '<leader>glwd', require('gitlab').delete_reviewer, desc = 'Delete Reviewer' },
})

wk.add({
  { '<leader>l', group = 'Gitlab', mode = 'v' },
  { '<leader>lc', require('gitlab').create_comment_suggestion, desc = 'Comment suggestion', mode = 'v' },
})
-- local gitlab = require('gitlab')
-- vim.keymap.set('n', '<leader>glr', gitlab.review)
-- vim.keymap.set('n', '<leader>gls', gitlab.summary)
-- vim.keymap.set('n', '<leader>glA', gitlab.approve)
-- vim.keymap.set('n', '<leader>glR', gitlab.revoke)
-- vim.keymap.set('n', '<leader>glc', gitlab.create_comment)
-- vim.keymap.set('n', '<leader>gln', gitlab.create_note)
-- vim.keymap.set('n', '<leader>gld', gitlab.toggle_discussions)
-- vim.keymap.set('n', '<leader>glaa', gitlab.add_assignee)
-- vim.keymap.set('n', '<leader>glad', gitlab.delete_assignee)
-- vim.keymap.set('n', '<leader>glra', gitlab.add_reviewer)
-- vim.keymap.set('n', '<leader>glrd', gitlab.delete_reviewer)
-- vim.keymap.set('n', '<leader>glp', gitlab.pipeline)
-- vim.keymap.set('n', '<leader>glo', gitlab.open_in_browser)
