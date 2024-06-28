-- ~/.config/nvim/lua/plugins/lint.lua
return {
  {
    'mfussenegger/nvim-lint',
    opts = {
      linters = {
        markdownlint = {
          args = { '--config', '~/.markdownlint.jsonc', '--' },
        },
      },
    },
  },
}
