return {
  'snacks.nvim',
  opts = function(_, opts)
    table.insert(
      opts.dashboard.preset.keys,
      5,
      { icon = 'ጠ ', key = 'm', desc = 'Gitlab MR', action = ":lua require('gitlab').review()" }
    )
    table.insert(
      opts.dashboard.preset.keys,
      7,
      { icon = 'S', key = 'S', desc = 'Select Session', action = require('persistence').select }
    )
  end,
}
