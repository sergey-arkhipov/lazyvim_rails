return {
  'stevearc/conform.nvim',
  optional = true,
  opts = {
    formatters_by_ft = {
      ruby = { 'rubocop' },
      eruby = { 'htmlbeautifier' },
      markdown = { 'markdownlint-cli2' },
    },
    formatters = {
      htmlbeautifier = {
        prepend_args = { '-b', 1 },
      },
    },
  },
}
