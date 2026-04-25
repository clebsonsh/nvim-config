vim.pack.add {
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
  'https://github.com/mfussenegger/nvim-lint',
}

require('mason').setup()
require('mason-lspconfig').setup()
require('mason-tool-installer').setup {
  ensure_installed = {
    'lua_ls',
    'stylua',
    'gopls',
  },
}

-- Rename using LSP
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)

vim.keymap.set('n', 'ca', vim.lsp.buf.code_action)

vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, { desc = 'LSP Format' })
