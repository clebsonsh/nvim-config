vim.pack.add {
  'https://github.com/saghen/blink.lib',
  'https://github.com/saghen/blink.cmp',
  'https://github.com/L3MON4D3/LuaSnip',
  'https://github.com/kristijanhusak/vim-dadbod-completion',
}

require('blink.cmp').setup {
  keymap = {
    preset = 'default',
    ['<Tab>'] = { 'select_and_accept', 'fallback' },
  },

  appearance = {
    nerd_font_variant = 'mono',
  },

  completion = {
    documentation = { auto_show = false, auto_show_delay_ms = 500 },
  },

  sources = {
    default = { 'lsp', 'path', 'snippets' },
    per_filetype = {
      sql = { 'snippets', 'dadbod', 'buffer' },
      mysql = { 'snippets', 'dadbod', 'buffer' },
      plsql = { 'snippets', 'dadbod', 'buffer' },
    },
    providers = {
      dadbod = {
        name = 'Dadbod',
        module = 'vim_dadbod_completion.blink',
      },
    },
  },

  snippets = { preset = 'luasnip' },

  fuzzy = { implementation = 'lua' },

  signature = { enabled = true },
}

require('luasnip').config.set_config {}
