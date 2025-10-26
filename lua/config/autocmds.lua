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

-- Autocmd to run linters and clear stale diagnostics
-- vim.api.nvim_create_autocmd({ 'BufWritePost', 'InsertLeave' }, {
--   callback = function()
--     vim.diagnostic.reset() -- Clear stale diagnostics to prevent "sticking" messages
--     require('lint').try_lint() -- Run linters
--   end,
-- })
-- Безопасная очистка extmarks за концом буфера
-- local cleanup_ns = vim.api.nvim_create_namespace('lazyvim_cleanup_eob')
--
-- vim.api.nvim_create_autocmd({ 'BufWritePre' }, { -- Используем 'Pre' (до) вместо 'Post' (после)
--   group = vim.api.nvim_create_augroup('CleanupEOB', { clear = true }),
--   pattern = '*',
--   callback = function(args)
--     -- Используем args.buf вместо '0'
--     local bufnr = args.buf
--     if not vim.api.nvim_buf_is_valid(bufnr) then return end
--
--     local last_line = vim.api.nvim_buf_line_count(bufnr) - 1
--     if last_line < 0 then return end
--
--     -- Начинаем чистить С последней строки (line_start = last_line)
--     -- pcall на случай, если что-то пойдет не так
--     pcall(vim.api.nvim_buf_clear_namespace, bufnr, cleanup_ns, last_line, last_line + 101)
--   end,
-- })
