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
opt.spellsuggest = { 'best', 9 }

-- This option can take more lines when replaced selected line block
-- opt.virtualedit = ''
vim.g.lazyvim_ruby_lsp = 'ruby_lsp'
vim.g.lazyvim_ruby_formatter = 'rubocop'

local log_path = vim.fn.stdpath('log') .. '/verbose.log'
if vim.fn.getfsize(log_path) > 1000000 then -- если больше 1MB
  os.remove(log_path)
end
vim.opt.verbose = 3
vim.opt.verbosefile = log_path

-- Global Border Settings
-- cmd('highlight CustomBorder guifg=#FFFFFF guibg=NONE') -- Define a custom border style
-- cmd('highlight! link FloatBorder CustomBorder') -- Link FloatBorder to CustomBorder
-- cmd('highlight! link VertSplit CustomBorder') -- Link VertSplit to CustomBorder
-- cmd('highlight! link PmenuBorder CustomBorder') -- Link PmenuBorder to CustomBorder
