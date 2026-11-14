require("vim._core.ui2").enable({})

-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.backup = false
vim.opt.backupcopy = "yes" -- Resolve problema com --watch do node
vim.opt.clipboard:append("unnamedplus")
vim.opt.cmdheight = 0
vim.opt.completeopt = 'menuone,noselect,fuzzy,nosort'
vim.opt.confirm = true -- raise a dialog asking if you wish to save the file(s) See `:help 'confirm'`
vim.opt.expandtab = true
vim.opt.fillchars = "eob: "
vim.opt.foldtext = ''
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.isfname:append("@-@")
vim.opt.laststatus = 2
vim.opt.list = false -- Show <tab> and trailing spaces
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.shortmess:append("c")
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.splitbelow = false -- Horizontal splits will be below if true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true
vim.opt.wrap = false

local map = vim.keymap.set
map({ 'n' }, '<leader>e', vim.cmd.Explore, { desc = "Abre o Explorador (ntrw)" })

map({ 'n' }, '<leader>bd', "<cmd>bd<return>", { desc = "Buffer delete" })
map({ 'n' }, '<leader>bw', "<cmd>bw<return>", { desc = "Buffer wipeout" })

map({ 'n' }, '<leader>w', "<C-w>", { desc = "Window commands" })

map({ 'n' }, '<leader>fc', function()
  vim.cmd.Explore(vim.fn.stdpath("config"))
end, { desc = "abre pasta de configurações" })

require("plugins")
require("lsp")

vim.cmd.colorscheme("default-felipe")
