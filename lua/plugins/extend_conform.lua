return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  opts = {
    formatters_by_ft = {
      -- ruby = { 'erb_lint' },
      eruby = { 'htmlbeautifier' },
      lua = { 'stylua' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
    },
    formatters = {
      htmlbeautifier = {
        prepend_args = { '-b', 1 },
      },
      erb_lint = {
        command = 'erb_lint',
        args = { '--format', 'compact' },
      },
    },
  },
}
