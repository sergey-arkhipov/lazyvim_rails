return {
  -- Add colorschemas
  { 'ellisonleao/gruvbox.nvim', lazy = true },
  { 'rebelot/kanagawa.nvim', lazy = true },
  { 'sainnhe/sonokai', lazy = true },
  { 'catppuccin/nvim', lazy = true },
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      saturation = 0.8,
    },
  },
  {
    'folke/tokyonight.nvim',
    opts = {
      -- transparent = true,
      styles = {
        -- sidebars = 'transparent',
        -- floats = 'transparent',
      },
    },
  },
  {
    'junegunn/vim-easy-align',
  },
}
