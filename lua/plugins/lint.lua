-- ~/.config/nvim/lua/plugins/lint.lua
return {
  {
    'mfussenegger/nvim-lint',
    opts = {
      linters_by_ft = {
        yaml = { 'yamllint' },
        eruby = { 'erb_lint' },
      },
      linters = {},
    },
  },
}
