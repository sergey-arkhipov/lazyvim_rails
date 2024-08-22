return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-emoji' },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require('cmp')
      opts.sources = {
        -- { name = 'nvim_lsp' }, -- Добавляет кучу не нужного текста. Может быть не так настроен lsp
        { name = 'luasnip' },
        { name = 'buffer' },
      }
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = 'emoji' } }))
    end,
  },
}
