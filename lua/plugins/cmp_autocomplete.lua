return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-emoji' },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require('cmp')
      opts.completion = {
        autocomplete = false, -- Disable automatic popup
      }
      opts.mapping = {
        ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion manually with Ctrl+Space
        -- Other mappings...
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection with Enter
      }
      opts.sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' }, -- Разобрался, работает нормально. Последовательность определяет порядок выдачи
        { name = 'buffer' },
      }
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = 'emoji' } }))
    end,
    keys = {
      {
        '<leader>ua',
        function()
          vim.g.cmp_disabled = not vim.g.cmp_disabled
          local msg = ''
          if vim.g.cmp_disabled == true then
            msg = 'Autocompletion (cmp) disabled'
          else
            msg = 'Autocompletion (cmp) enabled'
          end
          vim.notify(msg, vim.log.levels.INFO)
        end,
        noremap = true,
        silent = true,
        desc = 'toggle autocompletion',
      },
    },
  },
}
