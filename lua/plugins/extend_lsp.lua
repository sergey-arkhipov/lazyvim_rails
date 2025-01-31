return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim', 'it', 'describe', 'spy', 'before_each', 'after_each' },
            },
            runtime = {
              version = 'LuaJIT',
            },
            workspace = {
              library = {
                vim.api.nvim_get_runtime_file('', true), -- Make the server aware of Neovim runtime files
                vim.fn.expand('~/.luarocks/share/lua/5.4'),
                '/usr/share/lua/5.4',
                '/usr/share/lua/5.4/busted',
              },
            },
            checkThirdParty = false, -- Disable third-party library checks
          },
        },
      })
    end,
  },
}
