return {
  'harrisoncramer/gitlab.nvim',
  -- version = '3.3.11',
  -- branch = 'develop',
  dependencies = {
    { 'MunifTanjim/nui.nvim' },
    { 'nvim-lua/plenary.nvim' },
    'sindrets/diffview.nvim',
    'stevearc/dressing.nvim', -- Recommended but not required. Better UI for pickers.
    'nvim-tree/nvim-web-devicons', -- Recommended but not required. Icons in discussion tree.
  },
  enabled = true,
  build = function() require('gitlab.server').build(true) end, -- Builds the Go binary
  config = function()
    require('gitlab').setup({
      discussion_tree = { -- The discussion tree that holds all comments
        auto_open = false, -- Automatically open when the reviewer is opened
      },
      create_mr = {
        delete_branch = true,
        squash = true,
      },
    })
    -- Переопределение функции merge для использования squash = true и delete_branch = true
    local gitlab = require('gitlab')
    local original_merge = gitlab.merge
    gitlab.merge = function(opts)
      opts = opts or {}
      opts.squash = true -- Всегда squash = true
      opts.delete_branch = true -- Всегда delete_branch = true
      original_merge(opts)
    end
  end,
}
