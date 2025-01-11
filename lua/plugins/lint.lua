-- ~/.config/nvim/lua/plugins/lint.lua
return {
  {
    'mfussenegger/nvim-lint',
    opts = {
      linters_by_ft = {
        eruby = { 'erb_lint' },
      },
      linters = {},
    },
  },
}
