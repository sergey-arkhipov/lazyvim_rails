return {
  'folke/snacks.nvim',
  opts = function(_, opts)
    table.insert(
      opts.dashboard.preset.keys,
      5,
      { icon = 'ጠ ', key = 'm', desc = 'Gitlab MR', action = ":lua require('gitlab').review()" }
    )
    table.insert(
      opts.dashboard.preset.keys,
      8,
      { icon = 'S', key = 'S', desc = 'Select Session', action = require('persistence').select }
    )
    opts.dashboard.preset.keys[3] =
      { icon = ' ', key = 'a', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" }
    table.remove(opts.dashboard.preset.keys, 4)
    opts.dashboard.sections = {
      { section = 'header' },
      { section = 'keys', gap = 1, padding = 2 },
      { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 2 },
      { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 2 },
      { section = 'startup' },
    }
  end,
}
