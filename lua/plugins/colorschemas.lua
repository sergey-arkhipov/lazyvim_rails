return {
  -- add colorscheme
  { 'ellisonleao/gruvbox.nvim', lazy = true },
  { 'rebelot/kanagawa.nvim', lazy = true },
  { 'sainnhe/sonokai', lazy = true },
  { 'dracula/vim', lazy = true },
  { 'projekt0n/github-nvim-theme' },
  { 'catppuccin/nvim' },
  { 'Mofiqul/vscode.nvim' },
  { 'navarasu/onedark.nvim' },
  { 'shaunsingh/nord.nvim' },
  { 'Mofiqul/dracula.nvim' },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup({
        options = {
          -- Compiled file's destination location
          transparent = true,
        },
      })
    end,
  },
  {
    'folke/tokyonight.nvim',
    opts = {
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    },
  },
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'nordfox',
      -- colorscheme = 'sonokai',
    },
  },
}
