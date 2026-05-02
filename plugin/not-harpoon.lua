vim.keymap.set('n', '<leader>ha', function ()
    vim.cmd('argadd %')
    vim.cmd('argdedup')
end,{ desc = 'not-[h]arpoon [a]dd' })

vim.keymap.set('n', '<leader>hd', function ()
    vim.cmd('argdelete')
end,{ desc = 'not-[h]arpoon [d]elete' })

vim.keymap.set('n', '<leader>hs', function ()
    vim.cmd.args()
end,{ desc = 'not-[h]arpoon [s]how' })

vim.keymap.set('n', '<leader>1', function ()
    vim.cmd('silent! 1argument')
end)

vim.keymap.set('n', '<leader>2', function ()
    vim.cmd('silent! 2argument')
end)

vim.keymap.set('n', '<leader>3', function ()
    vim.cmd('silent! 3argument')
end)

vim.keymap.set('n', '<leader>4', function ()
    vim.cmd('silent! 4argument')
end)
