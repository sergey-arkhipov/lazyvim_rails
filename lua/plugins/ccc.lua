return {
  'uga-rosa/ccc.nvim',
  -- Обязательно вызываем require('ccc') для получения объекта 'ccc'
  -- перед использованием его функций (например, ccc.picker.ansi_escape)
  keys = {
    { '<leader>cx', '<cmd>CccPick<CR>', desc = 'Pick Color' },
  },
  config = function()
    local ccc = require('ccc')

    -- Таблица настроек, передаваемая в setup(), должна быть в { }
    ccc.setup({
      pickers = {
        -- Здесь мы используем ccc.picker.ansi_escape как элемент таблицы pickers
        ccc.picker.custom_entries({
          -- Цвета ANSI
          foreground = '#cccccc',
          background = '#0c0c0c',
          black = '#0c0c0c',
          red = '#c50f1f',
          green = '#13a10e',
          yellow = '#c19c00',
          blue = '#0037da',
          magenta = '#881798',
          cyan = '#3a96dd',
          white = '#cccccc',
          bright_black = '#767676',
          bright_red = '#e74856',
          bright_green = '#16c60c',
          bright_yellow = '#f9f1a5',
          bright_blue = '#3b78ff',
          bright_magenta = '#b4009e',
          bright_cyan = '#61d6d6',
          bright_white = '#f2f2f2',
        }, {
          -- Настройки для ANSI: как интерпретировать код '1' (bold)
          meaning1 = 'bright', -- Указывает, что \e[31;1m означает bright red
        }),
      },
    })
  end,
}
