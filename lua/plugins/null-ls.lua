return {
  'nvimtools/none-ls.nvim',
  opts = function(_, opts)
    local nls = require('null-ls')
    table.insert(opts.sources, nls.builtins.formatting.prettier)
  end,
}
