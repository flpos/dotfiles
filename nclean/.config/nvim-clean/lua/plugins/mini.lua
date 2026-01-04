vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

require('mini.completion').setup({
  delay = { completion = 10^10},
  mappings = {
    force_twostep = '<C-n>'
  }
})
local gen_loader = require('mini.snippets').gen_loader
require('mini.snippets').setup({
  snippets = {
    -- Load custom file with global snippets first (adjust for Windows)
    -- gen_loader.from_file('~/.config/nvim/snippets/global.json'),

    -- Load snippets based on current language by reading files from
    -- "snippets/" subdirectories from 'runtimepath' directories.
    gen_loader.from_lang(),
  },
})
require('mini.icons').setup()
MiniIcons.tweak_lsp_kind()

require('mini.files').setup({
  mappings = {
    close = '<leader>e'
  }
})
vim.keymap.set({ 'n' }, '<leader>e', function()
  MiniFiles.open(vim.api.nvim_buf_get_name(0))
end)
vim.keymap.set({ 'n' }, '<leader>E', function()
  MiniFiles.open()
end)

require('mini.notify').setup()
require('mini.surround').setup()
require('mini.pairs').setup()
require('mini.move').setup()
require('mini.ai').setup()
require('mini.diff').setup()
require('mini.jump').setup()
require('mini.hipatterns').setup()
require('mini.indentscope').setup({
  draw = {
    delay = 0,
    animation = require('mini.indentscope').gen_animation.none()
  },
})
