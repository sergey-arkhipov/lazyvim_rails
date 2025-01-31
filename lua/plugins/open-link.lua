return {

  'elentok/open-link.nvim',
  init = function()
    local expanders = require('open-link.expanders')
    require('open-link').setup({
      expanders = {
        expanders.github,
      },
    })
  end,
  cmd = { 'OpenLink', 'PasteImage' },
  keys = {
    {
      'ge',
      '<cmd>OpenLink<cr>',
      desc = 'Open the link under the cursor',
    },
    {
      '<Leader>ip',
      '<cmd>PasteImage<cr>',
      desc = 'Paste image from clipboard',
    },
  },
}
