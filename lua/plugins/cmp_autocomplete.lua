return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-emoji' },
    -- -@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require('cmp')
      opts.completion = {
        -- autocomplete = false, -- Disable automatic popup
      }
      opts.mapping = {
        ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion manually with Ctrl+Space
        -- Other mappings...
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection with Enter
      }
      opts.snippet = {
        expand = function(args) require('luasnip').lsp_expand(args.body) end,
      }
      opts.sources = {
        -- Последовательность определяет порядок выдачи
        { name = 'path', keyword_length = 3, max_item_count = 2 },
        { name = 'buffer', keyword_length = 3, max_item_count = 4 },
        { name = 'nvim_lsp', keyword_length = 3, max_item_count = 3 },
        { name = 'luasnip', keyword_length = 2, max_item_count = 5 },
        option = {
          get_bufnrs = function()
            local bufs = {}
            for _, win in ipairs(vim.api.nvim_list_wins()) do
              bufs[vim.api.nvim_win_get_buf(win)] = true
            end
            return vim.tbl_keys(bufs)
          end,
        },
      }
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = 'emoji' } }))
    end,
  },
}
