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
-- If the name “cjk” is included, East Asian characters are excluded from spell checking
opt.spelllang = { 'en', 'ru', 'cjk' } -- Словари рус eng
-- opt.spell = true
opt.spellsuggest = { 'best', 9 }

-- This option can take more lines when replaced selected line block
-- opt.virtualedit = ''
vim.g.lazyvim_ruby_lsp = 'ruby_lsp'
vim.g.lazyvim_ruby_formatter = 'rubocop'

local log_path = vim.fn.stdpath('log') .. '/verbose.log'
if vim.fn.getfsize(log_path) > 1000000 then -- если больше 1MB
  os.remove(log_path)
end
-- vim.opt.verbose = 3
opt.verbosefile = log_path
vim.g.lazyvim_check_clipboard = false
vim.g.clipboard = 'osc52'
vim.opt.clipboard = 'unnamedplus'
