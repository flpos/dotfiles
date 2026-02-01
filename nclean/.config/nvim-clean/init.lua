-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.completeopt = 'menuone,noselect,fuzzy'
vim.o.foldtext = ''
vim.o.splitbelow = false -- Horizontal splits will be below

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 3

-- Show <tab> and trailing spaces
vim.o.list = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.o.confirm = true

-- [[ Set up keymaps ]] See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`

-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Open Explorer on leade e
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = "Open Explorer" })

vim.keymap.set({ 'n' }, '<leader>x', vim.cmd.bdelete, { noremap = true })

vim.o.foldtext = ''

require("plugins")
require("lsp")

vim.cmd.colorscheme("meh")
