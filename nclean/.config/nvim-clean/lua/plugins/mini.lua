vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

require('mini.completion').setup({
  delay = {
    completion = 10^10
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

require('mini.files').setup()
vim.keymap.set({'n'}, '<leader>e', MiniFiles.open)

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
