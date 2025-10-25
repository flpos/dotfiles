vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 2
vim.o.wrap = false
vim.o.syntax = 'on'
-- vim.o.statuscolumn = '%@SignCb@%s%=%T%@NumCb@%l│%T'
-- vim.o.previewwindow = true
-- vim.o.scrollbind = true
-- vim.o.cursorbind = true
vim.o.clipboard = 'unnamedplus'

vim.o.undolevels = 10000
vim.o.undofile = true
vim.o.modified = true
vim.o.pumheight = 10
vim.o.matchpairs = '(:),{:},[:]'

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- 'exrc' permite configurar o neovim de acordo com os projetos
vim.o.exrc = true

-- config de exemplo {{{
-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- [[ Setting options ]] See `:h vim.o`
-- NOTE: You can change these options as you wish!
-- For more options, you can see `:help option-list`
-- To see documentation for an option, you can use `:h 'optionname'`, for example `:h 'number'`
-- (Note the single quotes)

-- Sync clipboard between OS and Neovim. Schedule the setting after `UiEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.o.clipboard = 'unnamedplus'
  end,
})

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

