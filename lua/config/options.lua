-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
-- local cmd = vim.cmd

opt.langmap =
  'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
opt.linebreak = true
opt.wrap = true
opt.iskeyword:append('-') -- consider string-string as whole word
-- spelling
-- If the name “cjk” is included, East Asian characters are excluded from spell checking
opt.spelllang = { 'en', 'ru', 'cjk' } -- Словари рус eng
opt.spell = true
opt.spellsuggest = { 'best', 9 }

vim.g.lazyvim_ruby_lsp = 'ruby_lsp'
vim.g.lazyvim_ruby_formatter = 'rubocop'

-- Global Border Settings
-- cmd('highlight CustomBorder guifg=#FFFFFF guibg=NONE') -- Define a custom border style
-- cmd('highlight! link FloatBorder CustomBorder') -- Link FloatBorder to CustomBorder
-- cmd('highlight! link VertSplit CustomBorder') -- Link VertSplit to CustomBorder
-- cmd('highlight! link PmenuBorder CustomBorder') -- Link PmenuBorder to CustomBorder
