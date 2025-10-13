return {
  'nvim-mini/mini.move',
  version = false,
  opts = {
    -- Module mappings. Use `''` (empty string) to disable one.
    mappings = {
      -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
      left = '<D-h>',
      right = '<D-l>',
      down = '<D-j>',
      up = '<D-k>',

      -- Move current line in Normal mode
      line_left = '<D-h>',
      line_right = '<D-l>',
      line_down = '<D-j>',
      line_up = '<D-k>',
    },
  },
}
