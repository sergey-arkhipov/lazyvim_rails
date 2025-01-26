return {
  'nvimtools/none-ls.nvim',
  opts = function(_, _)
    local null_ls = require('null-ls')

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        -- Following completion gave a lot of TEXT word !!!
        -- null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.markdownlint_cli2.with({ extra_args = { '--config', '~/.markdownlint.json' } }),
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.erb_lint,
        null_ls.builtins.formatting.htmlbeautifier.with({ extra_args = { '-b', 1 } }),
        --A smarter Dockerfile linter that helps you build best practice Docker images
        null_ls.builtins.diagnostics.hadolint,
        -- commitlint checks if your commit messages meet the conventional commit format.
        null_ls.builtins.diagnostics.commitlint,
        -- Code smell detector for Ruby
        null_ls.builtins.diagnostics.reek,
      },
    })
  end,
}
