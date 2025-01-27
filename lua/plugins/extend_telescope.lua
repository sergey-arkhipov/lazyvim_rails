return {
  'nvim-telescope/telescope.nvim',
  keys = {
    { '<leader>ft', '<cmd>ToggleTerm direction=horizontal<cr>', desc = 'Open Terminal' },
    {
      '<leader>fp',
      function() require('telescope.builtin').find_files({ cwd = require('lazy.core.config').options.root }) end,
      desc = 'Find Plugin File',
    },
  },
}
