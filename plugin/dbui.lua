vim.pack.add {
  'https://github.com/kristijanhusak/vim-dadbod-ui',
  'https://github.com/tpope/vim-dadbod',
}

vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_win_position = 'right'

vim.g.db_ui_save_location = '~/db/queries'
vim.g.db_ui_tmp_query_location = '~/db/tmp'

vim.keymap.set('n', '<leader>d', '<cmd>DBUIToggle<CR>')

-- Execute selected SQL in visual mode
vim.keymap.set('v', '<leader>d', [[:DB<CR>]], { desc = 'Run selected SQL query' })
