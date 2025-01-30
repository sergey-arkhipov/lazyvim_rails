-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = vim.keymap.set

-- Toggle autocomplete
map('n', '<leader>cb', function()
  vim.b.x = not vim.b.x
  require('cmp').setup.buffer({ enabled = not vim.b.x })
end, { desc = 'Toggle Autocomplete' })
--
-- Add map for cucumber tests
map('n', '<leader>tC', '<cmd>TestFile<cr>', { desc = 'Run Vim-test(cucumber)' })
map('n', '<leader>tc', '<cmd>TestNearest<cr>', { desc = 'Run Nearest(cucumber)' })
-- Надо сделать функцию для передачи параметров выделения
-- map('v', '<leader>ct', "<cmd>'<,'>EasyAlign *|<cr>", { desc = 'Table Align' })

-- Add set UI background transparent
map(
  'n',
  '<leader>ue',
  function() require('config.transparency').setBackgroundTransparent() end,
  { desc = 'Enable Transparency' }
)
-- Markdown preview toggle
map('n', '<leader>ce', '<cmd>RenderMarkdown toggle <cr>', { desc = 'Toggle markdown preview' })
--
-- Copy current buffer name and full path to clipboard
map('n', '<leader>cP', function()
  local path = vim.fn.expand('%:p')
  vim.fn.setreg('+', path)
  print(path)
end, { desc = 'Yank filepath' })
map('n', '<leader>cp', function()
  local path = vim.fn.expand('%')
  vim.fn.setreg('+', path)
  print(path)
end, { desc = 'Yank filename' })

-- Define the custom gf function
function custom_gf()
  -- Get the current filetype
  local filetype = vim.bo.filetype

  -- Only proceed if the filetype is erb or html.erb
  if filetype == 'eruby' or filetype == 'html.erb' then
    -- Get the current line under the cursor
    local line = vim.api.nvim_get_current_line()

    -- Extract the file name from the line using a pattern
    local filename = string.match(line, '<%%=.*render%s+[\'"]([^\'"]+)[\'"]')

    -- If no filename is found, try matching the @article_tags pattern
    if not filename then
      filename = string.match(line, '<%%=.*render%s+@([%w_]+)')
      if filename then
        -- Transform @article_tags to _article_tag (drop 's' and add '_')
        filename = '_' .. string.gsub(filename, 's$', '')
      end
    end

    -- If a filename is found, proceed with custom logic
    if filename then
      -- Add an underscore to the filename if it doesn't already start with one
      local dir, file = string.match(filename, '(.-)([^/]+)$')
      if not dir then
        dir = ''
        file = filename
      end
      if not string.match(file, '^_') then file = '_' .. file end
      filename = dir .. file

      -- Get the directory of the current buffer
      local current_file = vim.api.nvim_buf_get_name(0)
      local current_dir = vim.fn.fnamemodify(current_file, ':h')

      -- Use vim.fn.expand to find the file with the correct extension
      local full_path = nil

      -- First, check in the current directory
      full_path = vim.fn.expand(current_dir .. '/' .. file .. '.erb')
      if vim.fn.filereadable(full_path) == 0 then
        full_path = vim.fn.expand(current_dir .. '/' .. file .. '.html.erb')
      end

      -- If not found, check in app/views/
      if vim.fn.filereadable(full_path) == 0 then
        full_path = vim.fn.expand('app/views/' .. filename .. '.erb')
        if vim.fn.filereadable(full_path) == 0 then
          full_path = vim.fn.expand('app/views/' .. filename .. '.html.erb')
        end
      end

      -- If the file exists, open it in a buffer
      if vim.fn.filereadable(full_path) == 1 then
        vim.cmd('edit ' .. full_path)
        return
      end
    end
  end

  -- Fallback to default gf behavior
  vim.cmd('normal! gf')
end

-- Map the custom gf function to gf in Rails files
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'eruby', 'html.erb' },
  callback = function() vim.keymap.set('n', 'gf', custom_gf, { buffer = true, noremap = true, silent = true }) end,
})
