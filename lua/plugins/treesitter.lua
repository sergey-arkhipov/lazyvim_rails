return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
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
