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

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.cmdheight = 0

-- Pessoal
-- vim.o.completeopt = 'fuzzy,menu,menuone,popup'
-- MiniCompletion
vim.o.completeopt = 'menuone,noselect,fuzzy'

-- Sync clipboard between OS and Neovim. Schedule the setting after `UiEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.o.clipboard = 'unnamedplus'
  end,
})

local ajusta_background = function()
	local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
  if handle == nil then
    return
  end

	local result = handle:read("*a"):gsub("['\n]", "")
	handle:close()

	vim.o.background = (result == "prefer-dark") and "dark" or "light"
end

-- autocmd para atualizar sempre que foco
-- vim.api.nvim_create_autocmd({"FocusGained", "VimEnter"}, {
vim.api.nvim_create_autocmd("UIEnter", {
	callback = ajusta_background,
})
vim.api.nvim_create_user_command('AtualizaBackground', ajusta_background, {})

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight the line where the cursor is on
vim.o.cursorline = true

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

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
-- vim.keymap.set({ 't', 'i' }, '<C-h>', '<C-\\><C-n><C-w>h')
-- vim.keymap.set({ 't', 'i' }, '<C-j>', '<C-\\><C-n><C-w>j')
-- vim.keymap.set({ 't', 'i' }, '<C-k>', '<C-\\><C-n><C-w>k')
-- vim.keymap.set({ 't', 'i' }, '<C-l>', '<C-\\><C-n><C-w>l')
-- vim.keymap.set({ 'n' }, '<C-h>', '<C-w>h')
-- vim.keymap.set({ 'n' }, '<C-j>', '<C-w>j')
-- vim.keymap.set({ 'n' }, '<C-k>', '<C-w>k')
-- vim.keymap.set({ 'n' }, '<C-l>', '<C-w>l')

vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true })
-- vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { noremap = true })

vim.keymap.set({'n'}, '<leader>d', vim.cmd.bdelete, { noremap = true })
-- vim.keymap.set({'n'}, 'L', vim.cmd.bnext, { noremap = true })
-- vim.keymap.set({'n'}, 'H', vim.cmd.bprevious, { noremap = true })
-- vim.keymap.set({'n'}, '<leader>e', vim.cmd.Ex, { noremap = true })

-- [[ Basic Autocommands ]].
-- See `:h lua-guide-autocommands`, `:h autocmd`, `:h nvim_create_autocmd()`

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-- [[ Create user commands ]]
-- See `:h nvim_create_user_command()` and `:h user-commands`

vim.api.nvim_create_user_command("EditConfig", "e ~/.config/nvim-clean/init.lua", {})

-- Create a command `:GitBlameLine` that print the git blame for the current line
vim.api.nvim_create_user_command('GitBlameLine', function()
  local line_number = vim.fn.line('.') -- Get the current line number. See `:h line()`
  local filename = vim.api.nvim_buf_get_name(0)
  print(vim.system({ 'git', 'blame', '-L', line_number .. ',+1', filename }):wait().stdout)
end, { desc = 'Print the git blame for the current line' })

-- [[ Add optional packages ]]
-- Nvim comes bundled with a set of packages that are not enabled by
-- default. You can enable any of them by using the `:packadd` command.

-- For example, to add the "nohlsearch" package to automatically turn off search highlighting after
-- 'updatetime' and when going to insert mode
-- vim.cmd('packadd! nohlsearch')

-- [[ Install plugins ]]
-- Nvim functionality can be extended by installing external plugins.
-- One way to do it is with a built-in plugin manager. See `:h vim.pack`.
-- vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

-- TODO: adicionar integração com o git
-- require("config.lazy")
require("plugins")
require("lsp")
