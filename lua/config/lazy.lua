local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  spec = {
    -- add LazyVim and import its plugins
    { 'LazyVim/LazyVim', import = 'lazyvim.plugins' },
    -- import/override with your plugins
    { import = 'plugins' },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    -- version = false, -- always use the latest git commit
    version = '*', -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { 'tokyonight', 'habamax' } },
  checker = { enabled = false }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        'gzip',
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
})
-- vim.opt_local.path = "~/.config/nvim/lua"
-- Function to add the current directory to localpath
local function add_current_dir_to_localpath()
  local current_dir = vim.fn.expand('%:p:h') -- Get the current directory
  if current_dir ~= '' then
    -- Append the current directory to localpath
    vim.opt_local.path:append(current_dir)
  end
end
-- Call the function when entering a buffer
vim.api.nvim_create_autocmd('BufEnter', {
  callback = add_current_dir_to_localpath,
})

-- Set colorscheme
-- vim.cmd([[colorscheme cyberdream]])
-- vim.cmd([[colorscheme catppuccin]])
vim.cmd([[colorscheme tokyonight]])
-- vim.cmd([[colorscheme kanagawa]])
-- vim.cmd('highlight FloatBorder guifg=#CCCCCC guibg=NONE') -- Customize FloatBorder
-- vim.cmd('highlight VertSplit guifg=#CCCCCC guibg=NONE') -- Customize VertSplit
