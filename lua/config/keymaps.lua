-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")
wk.register({
  ["<leader>t"] = {
    -- name = "Test",
    C = { "<cmd>TestFile<cr>", "Run Cucumber" },
    c = { "<cmd>TestNearest -strategy=neovim<cr>", "Run Nearest scenario" },
  },
  ["<leader>c"] = {
    -- name = "+code",
    t = { "<cmd>EasyAlign*|<cr>", "Table Align", mode = "v" },
  },
})
