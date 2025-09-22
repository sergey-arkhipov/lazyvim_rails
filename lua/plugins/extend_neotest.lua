return {
  -- Add vim-test for run cucumber tests
  {
    'vim-test/vim-test',
    event = 'VeryLazy',
    config = function()
      -- Your Vim-Test configuration goes here
      vim.g['test#strategy'] = 'neovim' -- Set Neotest as the strategy
    end,
  },
  {
    'nvim-neotest/neotest',
    lazy = true,
    -- BUG: https://github.com/nvim-neotest/neotest/issues/531
    -- commit = '52fca671',
    -- version = '5.9.1',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-vim-test',
      'vim-test/vim-test',
      'olimorris/neotest-rspec',
      -- 'nvim-neotest/neotest-go',
    },
    -- Здесь можно переопределить клавиши и сделать функцию выбора для тестов
    -- keys = {
    --   { '<leader>tt', '<cmd>TestNearest<CR>', desc = 'Find Files' },
    -- },
    opts = {
      adapters = {
        ['neotest-vim-test'] = {
          allow_file_types = { 'feature', 'cucumber' },
          ignore_filetypes = {},
        },
        ['neotest-rspec'] = {
          allow_file_types = { 'ruby' },
          ignore_filetypes = { 'feature', 'cucumber' },
        },
        -- ['neotest-go'] = {},
        -- ['neotest-golang'] = {
        --   -- Here we can set options for neotest-golang, e.g.
        --   go_test_args = { '-v', '-race', '-count=1', '-timeout=60s' },
        --   dap_go_enabled = true, -- requires leoluz/nvim-dap-go
        -- },
      },
    },
  },
}
