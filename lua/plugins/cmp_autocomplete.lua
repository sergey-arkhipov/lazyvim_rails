return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-emoji' },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require('cmp')
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
