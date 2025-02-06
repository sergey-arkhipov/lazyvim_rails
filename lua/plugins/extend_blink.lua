return {
  'saghen/blink.cmp',
  opts = {
    -- Snippets work best without any additionals
    -- snippets = { preset = 'luasnip' },
    -- snippets = { expand = function(args) require('luasnip').lsp_expand(args.body) end },
    keymap = {
      preset = 'super-tab',
      ['<C-y>'] = { 'select_and_accept' },
    },
  },
}
