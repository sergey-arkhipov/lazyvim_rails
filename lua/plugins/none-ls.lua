return {
  'nvimtools/none-ls.nvim',
  opts = function(_, opts)
    local null_ls = require('null-ls')

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.markdownlint_cli2,
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.markdownlint,
        -- require('none-ls.diagnostics.eslint'), -- requires none-ls-extras.nvim
      },
    })
  end,
}
