return {
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }, -- Recognize Neovim's vim global
              disable = { 'unused-local' }, -- Disable unused-local warnings
              ignore = { '_.*' }, -- Ignore variables starting with _
            },
          },
        },
      },
    },
  },
}
