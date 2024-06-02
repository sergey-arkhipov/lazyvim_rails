return {
  'nvim-neotest/neotest',
  optional = true,
  dependencies = {
    'olimorris/neotest-rspec',
  },
  config = function()
    ---@diagnostic disable-next-line missing-fields
    require('neotest').setup({
      adapters = {
        require('neotest-rspec'),
      },
    })
  end,

  opts = {
    adapters = {
      ['neotest-rspec'] = {
        -- NOTE: By default neotest-rspec uses the system wide rspec gem instead of the one through bundler
        rspec_cmd = function()
          return {
            'bundle',
            'exec',
            'rspec',
          }
        end,
      },
    },
  },
}
