return {
  'ibhagwan/smartyank.nvim',
  -- enabled = false,
  opts = {
    highlight = {
      enabled = true, -- highlight yanked text
      higroup = 'IncSearch', -- highlight group of yanked text
      timeout = 100, -- timeout for clearing the highlight
    },
  },
}
