-- ~/.config/nvim/lua/plugins/extend_conform.lua
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  opts = {
    default_format_opts = {
      timeout_ms = 5000,
      async = true, -- not recommended to change (default false)
      quiet = false, -- not recommended to change
      lsp_format = 'fallback', -- not recommended to change
    },
    formatters_by_ft = {
      eruby = { 'htmlbeautifier', 'erb_lint' }, -- Apply erb_lint first, then htmlbeautifier
      lua = { 'stylua' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      sh = { 'shfmt' },
    },
    formatters = {
      htmlbeautifier = {
        prepend_args = { '-b', '1' },
      },
      erb_lint = {
        command = 'bundle',
        args = { 'exec', 'erb_lint', '--autocorrect', '$FILENAME' },
        stdin = false,
        ignore_exitcode = true,
        stderr_buffered = true,
        env = {
          RUBYOPT = '-W0',
        },
      },
    },
  },
}
