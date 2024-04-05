return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'suketa/nvim-dap-ruby',
  },
  config = function()
    require('dap-ruby').setup()
  end,
}
