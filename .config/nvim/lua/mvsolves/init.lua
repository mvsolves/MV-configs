-- Disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- require('mvsolves.mason')
require('mvsolves.completion')
require('mvsolves.lspconfig')
require('mvsolves.nvim-tree')
require('mvsolves.lualine')
require('mvsolves.comment')
require('mvsolves.telescope-config')
require('mvsolves.null-ls')
-- require('mvsolves.nvim-cmp-config')

