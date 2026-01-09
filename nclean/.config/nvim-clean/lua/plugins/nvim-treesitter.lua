vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })
require('nvim-treesitter').setup({
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
})

local languages = {
  'html',
  'javascript',
  'typescript',
  'json',
  'tsx',
  'styled',
  'css',
  'http',
  'kitty',
  'java',
  'go',
  'lua',
  'markdown',
  'make',
  'c',
  'ssh_config',
  'desktop',
  'groovy',
  'zsh',
  'bash'
}

require('nvim-treesitter').install(languages)
vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function()
    vim.treesitter.start()
    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo[0][0].foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
