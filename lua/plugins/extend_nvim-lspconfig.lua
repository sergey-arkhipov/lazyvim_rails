return {
  'neovim/nvim-lspconfig',
  -- event = 'LazyFile',
  -- dependencies = {
  --   'mason.nvim',
  --   { 'mason-org/mason-lspconfig.nvim', config = function() end },
  -- },
  opts = {
    servers = {
      gopls = {
        -- mason = false, -- set to false if you don't want this server to be installed with mason
        -- Use this to add any additional keymaps
        -- for specific lsp servers
        -- ---@type LazyKeysSpec[]
        -- keys = {},
        settings = {
          gopls = {
            buildFlags = {
              '-tags=integration',
            },
          },
        },
      },
    },
  },
}
