return {
  {
    'folke/snacks.nvim',
    opts = {
      dashboard = {
        preset = {
          -- @type snacks.dashboard.Item[]
          keys = {
            { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
            { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
            { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = 'ጠ ', key = 'm', desc = 'Gitlab MR', action = ":lua require('gitlab').review()" },
            {
              icon = ' ',
              key = 'c',
              desc = 'Config',
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
            { icon = ' ', key = 'x', desc = 'Lazy Extras', action = ':LazyExtras' },
            { icon = '󰒲 ', key = 'l', desc = 'Lazy', action = ':Lazy' },
            { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
          },
        },
      },
    },
  },

  -- Add osc52 support for remote
  {
    'ibhagwan/smartyank.nvim',
    -- enabled = false,
    opts = {
      highlight = {
        enabled = true, -- highlight yanked text
        higroup = 'IncSearch', -- highlight group of yanked text
        timeout = 100, -- timeout for clearing the highlight
      },
    },
  },
  -- Add allign for table and so on
  {
    'junegunn/vim-easy-align',
  },
  -- Add surrond support
  {
    'echasnovski/mini.surround',
    recommended = true,
    opts = {
      mappings = {
        add = 'gsa', -- Add surrounding in Normal and Visual modes
        delete = 'gsd', -- Delete surrounding
        find = 'gsf', -- Find surrounding (to the right)
        find_left = 'gsF', -- Find surrounding (to the left)
        highlight = 'gsh', -- Highlight surrounding
        replace = 'gsr', -- Replace surrounding
        update_n_lines = 'gsn', -- Update `n_lines`
      },
    },
  },
}
