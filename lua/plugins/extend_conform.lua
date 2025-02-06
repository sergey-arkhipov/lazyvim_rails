return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      ruby = { 'rubocop' },
      eruby = { 'htmlbeautifier' },
      -- eruby = { 'erb_format' },
    },
    formatters = {
      htmlbeautifier = {
        prepend_args = { '-b', 1 },
      },
      -- erb_format = {
      --   args = { '--print-width', '100', '--stdin' },
      -- },
    },
  },
}
