-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require('which-key')
wk.register({
  ['<leader>t'] = {
    -- name = "Test",
    C = { '<cmd>TestFile<cr>', 'Run Vim-test(cucumber)' },
    c = { '<cmd>TestNearest -strategy=neovim<cr>', 'Run Nearest test' },
  },
  ['<leader>c'] = {
    -- name = "+code",
    t = { '<cmd>EasyAlign*|<cr>', 'Table Align', mode = 'v' },
  },
})

wk.register({
  g = {
    l = {
      name = 'Gitlab',
      r = { require('gitlab').review, 'Review' },
      s = { require('gitlab').summary, 'Summary' },
      c = { require('gitlab').create_comment, 'Comment' },
      d = { require('gitlab').toggle_discussions, 'Toggle Discussions' },
      p = { require('gitlab').pipeline, 'Pipeline' },
      o = { require('gitlab').open_in_browser, 'Open in browser' },
      a = {
        name = 'Assignee',
        a = { require('gitlab').add_assignee, 'Add assignee' },
        d = { require('gitlab').delete_assignee, 'Delete assignee' },
      },
      w = {
        name = 'Reviewer',
        a = { require('gitlab').add_reviewer, 'Add Reviewer' },
        d = { require('gitlab').delete_reviewer, 'Delete Reviewer' },
      },
    },
  },
}, { prefix = '<leader>' })
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
