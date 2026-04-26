vim.pack.add {
  'https://github.com/vim-test/vim-test',
}

vim.keymap.set('n', '<leader>tt', '<cmd>TestNearest<CR>', { desc = 'Run Current Test' })
vim.keymap.set('n', '<leader>tf', '<cmd>TestFile<CR>', { desc = 'Run Test File' })
vim.keymap.set('n', '<leader>ts', '<cmd>TestSuite<CR>', { desc = 'Run Test Suite' })
vim.keymap.set('n', '<leader>tl', '<cmd>TestLast<CR>', { desc = 'Run Latest Test' })
vim.keymap.set('n', '<leader>tv', '<cmd>TestVisit<CR>', { desc = 'Visit Test' })
