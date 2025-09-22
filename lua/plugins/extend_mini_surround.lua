-- Change surround hot keys
return {
  -- Add new mappinngs to surround
  {
    'nvim-mini/mini.surround',
    opts = {
      mappings = {
        add = ';;',
        delete = ';d',
        find = ';f',
        find_left = ';F',
        highlight = ';h',
        replace = ';r',
        update_n_lines = ';n',
      },
    },
  },

  -- Remove ; mappings from flash plugin
  {
    'folke/flash.nvim',
    opts = {
      modes = {
        char = {
          keys = { 'f', 'F', 't', 'T' },
        },
      },
    },
  },
}
