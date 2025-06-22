return {

  'elentok/open-link.nvim',
  init = function()
    local expanders = require('open-link.expanders')
    -- Функция для экранирования специальных символов в регулярных выражениях
    local function escape_pattern(str) return str:gsub('[-%.%+%*%?%[%]%(%)%^%$%%]', '%%%1') end
    -- Кастомный expander для gem в Gemfile
    local function gem_expander(text)
      if vim.bo.filetype == 'ruby' and vim.fn.expand('%:t'):match('^Gemfile$') then
        local gem_name = text:match('^gem%s+[\'"]([^\'"]+)[\'"]')
          or text:match('^[\'"]([^\'"]+)[\'"]')
          or text:match('^([^%s]+)$')
        local function extract_gem_url(from_gem_name, output)
          local lines = vim.split(output, '\n')
          local escaped_gem_name = escape_pattern(from_gem_name)
          local alt_gem_name = from_gem_name:gsub('-', '_')

          for _, line in ipairs(lines) do
            if
              line:match('https?://')
              and (
                line:match('Homepage:')
                or line:lower():match(escaped_gem_name:lower())
                or line:lower():match(alt_gem_name:lower())
              )
            then
              return line:match('https?://[%w%-_./]+')
            end
          end
          return nil
        end
        if gem_name then
          -- Локальный поиск
          local result = vim.fn.system({ 'gem', 'info', gem_name })
          if vim.v.shell_error == 0 then
            local url = extract_gem_url(gem_name, result)
            if url then return url end
          end

          -- Удалённый поиск
          vim.notify('Gem not found locally, trying remote search...', vim.log.levels.WARN)
          local remote_result = vim.fn.system({ 'gem', 'info', '-r', gem_name })
          if vim.v.shell_error == 0 then
            local remote_url = extract_gem_url(gem_name, remote_result)
            if remote_url then return remote_url end
          end

          -- Не найдено нигде
          vim.notify('Gem not found even remotely!', vim.log.levels.ERROR)
          return nil
        end
      end
      return nil
    end
    require('open-link').setup({
      expanders = {
        expanders.github,
        gem_expander,
      },
    })
  end,
  cmd = { 'OpenLink', 'PasteImage' },
  keys = {
    {
      'ge',
      '<cmd>OpenLink<cr>',
      desc = 'Open the link under the cursor',
    },
    {
      '<Leader>ip',
      '<cmd>PasteImage<cr>',
      desc = 'Paste image from clipboard',
    },
  },
}
