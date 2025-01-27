return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      ruby = { 'rubocop' },
      eruby = { 'htmlbeautifier' },
    },
    formatters = {
      htmlbeautifier = {
        prepend_args = { '-b', 1 },
      },
    },
  },
}
