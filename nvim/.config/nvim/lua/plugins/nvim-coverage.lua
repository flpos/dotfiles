return {
  "andythigpen/nvim-coverage",
  version = "*",
  config = function()
    require("coverage").setup({
      auto_reload = true,
    })
  end,
  keys = {
    {
      "<leader>cov",
      ":CoverageLoad<CR>:CoverageShow<CR>",
      desc = "Atualiza cobertura de testes",
    },
  },
}
