return {
  'saghen/blink.cmp',
  opts = {
    -- Snippets work best without any additionals
    -- snippets = { preset = 'luasnip' },
    -- snippets = { expand = function(args) require('luasnip').lsp_expand(args.body) end },
    keymap = {
      preset = 'default',
      -- ['<C-y>'] = { 'select_and_accept' },
      -- ['<Up>'] = { 'select_prev', 'fallback' },
      -- ['<Down>'] = { 'select_next', 'fallback' },
      -- ['<S-Tab>'] = { 'select_prev', 'fallback' },
      -- ['<Tab>'] = { 'select_next', 'fallback' },
      -- ['<Enter>'] = {
      --   function(cmp)
      --     if cmp.snippet_active() then
      --       return cmp.accept()
      --     else
      --       return cmp.select_and_accept()
      --     end
      --   end,
      --   'snippet_forward',
      --   'fallback',
      -- },
    },
  },
}
