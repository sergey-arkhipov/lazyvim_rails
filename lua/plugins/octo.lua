return {
  'pwntester/octo.nvim',
  -- version = '3.3.11',
  -- branch = 'develop',
  dependencies = {
    'folke/snacks.nvim',
  },
  enabled = true,
  config = function()
    require('octo').setup({
      picker = 'fzf-lua',
    })
  end,
}
