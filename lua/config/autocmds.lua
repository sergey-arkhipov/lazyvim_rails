-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Set filetype yaml for eruby-yaml
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufNewFile' }, {
  pattern = '*.yml',
  command = 'setlocal filetype=yaml',
})
-- Map the custom gf function to gf in Rails files
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'eruby', 'html.erb' },
  callback = function() vim.keymap.set('n', 'gf', ':Railsgf<cr>', { buffer = true, noremap = true, silent = true }) end,
})

-- Enable dimmed on startup
-- vim.api.nvim_create_autocmd('BufEnter', {
--   pattern = '*',
--   callback = function()
--     -- Use vim.schedule to ensure the command runs after Neovim is fully initialized.
--     vim.schedule(function() require('snacks').dim.enable() end)
--   end,
-- })
vim.api.nvim_create_user_command('FormatErbLint', function()
  vim.defer_fn(
    function() require('conform').format({ formatters = { 'erb_lint' }, async = true, timeout_ms = 15000 }) end,
    2000
  ) -- Delay by 2 seconds
end, { desc = 'Format with erb_lint' })
