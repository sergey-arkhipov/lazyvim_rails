return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'RRethy/nvim-treesitter-endwise' },
    opts = function(_, opts)
      opts.endwise = { enable = true }
      vim.list_extend(opts.ensure_installed, {
        'ruby',
        'ninja',
        'python',
        'toml',
        'jsonc',
        'markdown',
        'lua',
        'regex',
      })
    end,
  },
}
