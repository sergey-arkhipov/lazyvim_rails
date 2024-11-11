return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-emoji' },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require('cmp')
      opts.sources = {
        { name = 'buffer' },
        { name = 'nvim_lsp' }, -- Разобрался, работает нормально. Последовательность определяет порядок выдачи
        { name = 'luasnip' },
      }
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = 'emoji' } }))
    end,
  },
}
