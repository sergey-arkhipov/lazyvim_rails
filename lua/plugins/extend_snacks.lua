return {
  {
    'folke/snacks.nvim',
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true, -- Show hidden files by default
            ignored = false, -- Show git-ignored files
          },
        },
        win = {
          input = {
            keys = {
              ['<C-h>'] = { 'toggle_hidden', mode = { 'i', 'n' } }, -- Remap toggle_hidden to Ctrl+h
            },
          },
        },
      },
    },
  },
}
