return {
  'neovim/nvim-lspconfig',
  -- event = 'LazyFile',
  -- dependencies = {
  --   'mason.nvim',
  --   { 'mason-org/mason-lspconfig.nvim', config = function() end },
  -- },
  opts = {
    inlay_hints = { enabled = false },
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
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
            analyses = {
              nilness = true,
              unusedparams = true,
              unusedwrite = true,
              useany = true,
            },
          },
        },
      },
    },
    setup = {
      gopls = function(_, opts)
        -- workaround for gopls not supporting semanticTokensProvider
        -- https://github.com/golang/go/issues/54531#issuecomment-1464982242
        Snacks.util.lsp.on({ name = 'gopls' }, function(_, client)
          if not client.server_capabilities.semanticTokensProvider then
            local semantic = client.config.capabilities.textDocument.semanticTokens
            client.server_capabilities.semanticTokensProvider = {
              full = true,
              legend = {
                tokenTypes = semantic.tokenTypes,
                tokenModifiers = semantic.tokenModifiers,
              },
              range = true,
            }
          end
        end)
        -- end workaround
      end,
    },
  },
}
