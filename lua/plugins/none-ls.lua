return {
  'nvimtools/none-ls.nvim',
  opts = function(_, _)
    local null_ls = require('null-ls')

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        -- Following completion gave a lot of TEXT word !!!
        -- null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.markdownlint_cli2,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.erb_lint,
        -- null_ls.builtins.diagnostics.markdownlint,
        -- require('none-ls.diagnostics.eslint'), -- requires none-ls-extras.nvim
      },
    })
  end,
}
