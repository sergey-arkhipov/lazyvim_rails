return {
  'stevearc/conform.nvim',
  optional = true,
  opts = {
    formatters_by_ft = {
      ruby = { formatter },
      eruby = { 'htmlbeautifier' },
    },
  },
}
