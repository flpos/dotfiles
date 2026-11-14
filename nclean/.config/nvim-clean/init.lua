require("vim._core.ui2").enable({})

-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.completeopt = 'menuone,noselect,fuzzy,nosort'
vim.o.foldtext = ''
vim.o.splitbelow = false -- Horizontal splits will be below

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.cmdheight = 0
vim.opt.shortmess:append("c")
vim.opt.clipboard:append("unnamedplus")
vim.opt.isfname:append("@-@")
vim.opt.signcolumn = "yes"

-- Show <tab> and trailing spaces
vim.o.list = false

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.o.confirm = true

-- [[ Set up keymaps ]] See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`

-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Open Explorer on leade e
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = "Open Explorer" })

vim.keymap.set({ 'n' }, '<leader>x', vim.cmd.bdelete, { noremap = true })

require("plugins")
require("lsp")

vim.cmd.colorscheme("default-felipe")
