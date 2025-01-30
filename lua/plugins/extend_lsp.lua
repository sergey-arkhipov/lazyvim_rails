return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim', 'describe', 'it' }, -- Recognize `vim` as a global variable
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file('', true), -- Make the server aware of Neovim runtime files
              checkThirdParty = false, -- Disable third-party library checks
            },
            telemetry = {
              enable = false, -- Disable telemetry to avoid sending data
            },
          },
        },
      })
    end,
  },
}
