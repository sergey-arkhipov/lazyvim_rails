return {
  'neovim/nvim-lspconfig',
  opts = {
    inlay_hints = { enabled = true },
    servers = {
      -- lua_ls = {
      --   settings = {
      --     Lua = {
      --       workspace = {
      --         checkThirdParty = false,
      --         library = {
      --           vim.api.nvim_get_runtime_file('', true),
      --         },
      --       },
      --     },
      --   },
      -- },
      gopls = {
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
  },
}
