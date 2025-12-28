return {
  'saghen/blink.cmp',
  dependencies = 'nvim-mini/mini.snippets',
  opts = {
    -- Snippets work best without any additionals
    -- snippets = { preset = 'luasnip' },
    snippets = { preset = 'mini_snippets' },
    -- preset = 'default',
    appearance = {
      -- sets the fallback highlight groups to nvim-cmp's highlight groups
      -- useful for when your theme doesn't support blink.cmp
      -- will be removed in a future release, assuming themes add support
      use_nvim_cmp_as_default = false,
      -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono',
    },
    completion = {
      accept = {
        -- experimental auto-brackets support
        auto_brackets = {
          enabled = true,
        },
      },
      menu = {
        draw = {
          treesitter = { 'lsp' },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
      },
      ghost_text = {
        enabled = vim.g.ai_cmp,
      },
    },

    -- experimental signature help support
    signature = { enabled = true },
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
