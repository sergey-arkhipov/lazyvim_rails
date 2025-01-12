return {
  'harrisoncramer/gitlab.nvim',
  dependencies = {
    { 'MunifTanjim/nui.nvim', commit = '9e3916e' },
    { 'nvim-lua/plenary.nvim', commit = '2d9b06177a975543726ce5c73fca176cedbffe9d' },
    'sindrets/diffview.nvim',
    'stevearc/dressing.nvim', -- Recommended but not required. Better UI for pickers.
    'nvim-tree/nvim-web-devicons', -- Recommended but not required. Icons in discussion tree.
  },
  enabled = true,
  build = function()
    require('gitlab.server').build(true)
  end, -- Builds the Go binary
  config = function()
    require('gitlab').setup({
      discussion_tree = { -- The discussion tree that holds all comments
        auto_open = false, -- Automatically open when the reviewer is opened
      },
    })
  end,
}
