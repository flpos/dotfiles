-- Centralizador de configurações de LSP

vim.lsp.config["vtsls"] = {
  --cmd = { "npx", "typescript-language-server", "--stdio" },
  cmd = { "npx", "vtsls", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  root_markers = { "tsconfig.json", "package.json" },
}
vim.lsp.enable("vtsls")

vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  -- Sets the "workspace" to the directory where any of these files is found.
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    ".git",
  },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
}
vim.lsp.enable("lua_ls")
