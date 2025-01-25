-- transparent background
local function setBackgroundTransparent()
  vim.api.nvim_set_hl(0, 'normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'normalfloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'floatborder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'pmenu', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'terminal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'endofbuffer', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'foldcolumn', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'folded', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'signcolumn', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'diffview', { bg = 'none' })

  -- transparent background for neotree
  vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeVertSplit', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none' })

  -- transparent background for nvim-tree
  vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NvimTreeVertSplit', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', { bg = 'none' })
end
return {
  setBackgroundTransparent = setBackgroundTransparent,
}
