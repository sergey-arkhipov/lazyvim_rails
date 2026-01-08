return {

  -- Add osc52 support for remote
  -- {
  --   'ibhagwan/smartyank.nvim',
  --   -- enabled = false,
  --   opts = {
  --     highlight = {
  --       enabled = true, -- highlight yanked text
  --       higroup = 'IncSearch', -- highlight group of yanked text
  --       timeout = 100, -- timeout for clearing the highlight
  --     },
  --   },
  -- },

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
