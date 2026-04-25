vim.pack.add {
  'https://github.com/NMAC427/guess-indent.nvim',
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/lukas-reineke/indent-blankline.nvim',
  'https://github.com/folke/which-key.nvim',
}

require('guess-indent').setup()
require('nvim-autopairs').setup()
require('ibl').setup()
