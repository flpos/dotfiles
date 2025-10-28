return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        typescript = {
          tsserver = {
            maxTsServerMemory = 8192,
          },
        },
      },
    },
  },
}
