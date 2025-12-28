vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/BurntSushi/ripgrep',
  'https://github.com/BurntSushi/ripgrep',
  'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
  'https://github.com/sharkdp/fd',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-telescope/telescope.nvim'
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fc', function() builtin.find_files({ cwd = vim.fn.stdpath('config') }) end,
  { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fh', function() builtin.find_files({ hidden = true }) end,
  { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' })
