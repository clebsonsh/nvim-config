vim.pack.add {
  'https://github.com/NMAC427/guess-indent.nvim',
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/folke/which-key.nvim',
  'https://github.com/vimpostor/vim-tpipeline',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim',
}

require('guess-indent').setup()
require('nvim-autopairs').setup()
require('lualine').setup {
  options = {
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
  },
}
