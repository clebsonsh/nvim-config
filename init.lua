-- [BASE SETUP]
-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set tab options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Make line numbers default
vim.o.number = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Enable break indent
vim.o.breakindent = true

-- Enable undo/redo changes even after closing and reopening a file
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 8

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

-- Disable word wrap
vim.opt.wrap = false

-- [KEY MAPS]
local opts = { noremap = true, silent = true }

-- Keep cursor centered when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Move selected line / block of text in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- Fast saving
vim.keymap.set('n', '<leader>w', ':write<CR>', { silent = true, desc = '[W]rite buffer' })

-- Fast quiting
vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true, desc = '[Q]uit buffer' })

-- Easy insertion of a trailing ; or , from normal mode.
vim.keymap.set('n', ';;', 'A;<Esc>', opts)
vim.keymap.set('n', ',,', 'A,<Esc>', opts)

-- keep selected after indenting
vim.keymap.set('v', '<', '<gv', opts)

vim.keymap.set('v', '>', '>gv', opts)

-- paste over currently selected text without yanking it
vim.keymap.set('v', 'p', '"_dp')
vim.keymap.set('v', 'P', '"_dP')

-- copy everything between { and } including the brackets
-- p puts text after the cursor,
-- P puts text before the cursor.
vim.keymap.set('n', 'YY', 'va{Vy', opts)

-- Move line on the screen rather than by line in the file
vim.keymap.set('n', 'j', 'gj', opts)
vim.keymap.set('n', 'k', 'gk', opts)

-- Exit on jj and jk
vim.keymap.set('i', 'jj', '<ESC>', opts)
vim.keymap.set('i', 'jk', '<ESC>', opts)

-- Move to start/end of line
vim.keymap.set({ 'n', 'x', 'o' }, 'H', '^', opts)
vim.keymap.set({ 'n', 'x', 'o' }, 'L', 'g_', opts)

-- Navigate buffers
vim.keymap.set('n', '<leader>n', ':bnext<CR>', { silent = true, desc = 'Go to next buffer' })
vim.keymap.set('n', '<leader>p', ':bprevious<CR>', { silent = true, desc = 'Go to previous buffer' })

-- Panes resizing
vim.keymap.set('n', '+', ':vertical resize +5<CR>', opts)
vim.keymap.set('n', '_', ':vertical resize -5<CR>', opts)
vim.keymap.set('n', '=', ':resize +5<CR>', opts)
vim.keymap.set('n', '-', ':resize -5<CR>', opts)

-- Split line with X
vim.keymap.set('n', 'X', ':keeppatterns substitute/\\s*\\%#\\s*/\\r/e <bar> normal! ==^<cr>', opts)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', opts)

-- Open builtin terminal
vim.keymap.set('n', '<leader>j', ':terminal<CR>', { silent = true, desc = 'Open terminal' })

-- Exit terminal model
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', opts)

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Split Vertically
vim.keymap.set('n', '<leader>v', '<C-w>v')
-- Split Horizontally
vim.keymap.set('n', '<leader>h', '<C-w>s')

-- [AUTOCMD]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function() vim.hl.on_yank() end,
})

