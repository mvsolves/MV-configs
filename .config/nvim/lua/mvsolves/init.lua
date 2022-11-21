require('lualine').setup {

  options = {
    icons_enabled = false,
    -- theme = 'auto',
    theme = 'gruvbox_dark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},

    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,

    refresh = {
      statusline = 50,
      tabline = 1000,
      winbar = 1000,
    }

  },

  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()
