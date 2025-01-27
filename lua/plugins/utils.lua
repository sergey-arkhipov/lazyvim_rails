return {

  -- Add osc52 support for remote
  {
    'ibhagwan/smartyank.nvim',
    -- enabled = false,
    opts = {
      highlight = {
        enabled = true, -- highlight yanked text
        higroup = 'IncSearch', -- highlight group of yanked text
        timeout = 100, -- timeout for clearing the highlight
      },
    },
  },
  -- Add allign for table and so on
  {
    'junegunn/vim-easy-align',
  },
  -- Add colorschemas

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
  -- Use PandocPaste for precerve formatting
  {
    'petRUShka/pandoc_paste.vim',
    config = function()
      -- Example: disable default mapping
      -- vim.g.pandoc_paste_no_mapping = 1
    end,
  },
}
