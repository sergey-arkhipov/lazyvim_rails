return {
  'nvimtools/none-ls.nvim',
  enabled = false,
  opts = function(_, _)
    local null_ls = require('null-ls')

    null_ls.setup({
      -- Добавляем события для более частого обновления диагностики
      on_attach = function(_, bufnr)
        local augroup = vim.api.nvim_create_augroup('NullLsFormatting', {})
        vim.api.nvim_create_autocmd({ 'BufWritePost', 'TextChanged', 'InsertLeave' }, {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.diagnostic.reset(nil, bufnr) -- Очищаем старую диагностику
            vim.lsp.buf_request(
              bufnr,
              'textDocument/diagnostic',
              { textDocument = vim.lsp.util.make_text_document_params() }
            )
          end,
        })
      end,
      sources = {
        null_ls.builtins.formatting.stylua,
        -- Following completion gave a lot of TEXT word !!!
        -- null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.markdownlint_cli2.with({ extra_args = { '--config', '~/.markdownlint.json' } }),
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.erb_lint,
        null_ls.builtins.diagnostics.revive,
        null_ls.builtins.formatting.htmlbeautifier.with({ extra_args = { '-b', 1 } }),
        --A smarter Dockerfile linter that helps you build best practice Docker images
        -- null_ls.builtins.diagnostics.hadolint,
        -- commitlint checks if your commit messages meet the conventional commit format.
        -- null_ls.builtins.diagnostics.commitlint,
        -- Code smell detector for Ruby
        null_ls.builtins.diagnostics.reek,
      },
    })
  end,
}
