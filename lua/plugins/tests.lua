return {
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
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-vim-test',
      'olimorris/neotest-rspec',
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
      },
    },
  },
}
