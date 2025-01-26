-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.langmap =
  'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
opt.linebreak = true
opt.wrap = true
opt.iskeyword:append('-') -- consider string-string as whole word
-- spelling
opt.spelllang = { 'en_us', 'ru' } -- Словари рус eng
opt.spell = true
-- local function copy(lines, _) require('osc52').copy(table.concat(lines, '\n')) end
--
-- local function paste() return { vim.fn.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('') } end

-- vim.g.clipboard = {
--   name = 'osc52',
--   copy = { ['+'] = copy, ['*'] = copy },
--   paste = { ['+'] = paste, ['*'] = paste },
-- }

-- Now the '+' register will copy to system clipboard using OSC52
-- Clipboard config
opt.clipboard = nil
-- vim.g.clipboard = {
--   name = 'OSC 52',
--   copy = {
--     ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
--   },
--   paste = {
--     ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
--   },
-- }

-- vim.keymap.set('n', '<leader>c', '"+y')
-- vim.keymap.set('n', '<leader>cc', '"+yy')

vim.g.lazyvim_ruby_lsp = 'ruby_lsp'
vim.g.lazyvim_ruby_formatter = 'rubocop'
