return {
  'saghen/blink.cmp',
  dependencies = 'nvim-mini/mini.snippets',
  opts = {
    -- Snippets work best without any additionals
    -- snippets = { preset = 'luasnip' },
    snippets = { preset = 'mini_snippets' },
    keymap = {
      preset = 'super-tab',
      -- ['<Right>'] = { 'select_and_accept' },
      -- ['<CR>'] = {},
      -- preset = 'super-tab',
      -- ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      -- ['<C-e>'] = { 'hide', 'fallback' },
      -- ['<C-y>'] = { 'select_and_accept' },
      --
      -- ['<Tab>'] = {
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
      -- ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
      --
      -- ['<Up>'] = { 'select_prev', 'fallback' },
      -- ['<Down>'] = { 'select_next', 'fallback' },
      -- ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
      -- ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
      --
      -- ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      -- ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
      --
      -- ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
    },
  },
}
