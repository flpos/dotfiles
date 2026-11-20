return {
  {
    "snacks.nvim",
    opts = {
      -- image = { enabled = false },
      indent = { enabled = false },
      -- input = { enabled = true },
      -- notifier = { enabled = true },
      -- scope = { enabled = true },
      -- scroll = { enabled = true },
      -- toggle = { map = LazyVim.safe_keymap_set },
      dashboard = {
        preset = {
          header = [[ _______             ____   ____.__         
 \      \   ____  ___\   \ /   /|__| _____  
 /   |   \_/ __ \/  _ \   Y   / |  |/     \ 
/    |    \  ___(  <_> )     /  |  |  Y Y  \
\____|__  /\___  >____/ \___/   |__|__|_|  /
        \/     \/                        \/ ]],
        },
      },
      terminal = {
        win = {
          style = "float", -- Define que é flutuante
          position = "float",
          backdrop = 60, -- Escurece o fundo atrás da janela (0 a 100)
          width = 0.9, -- 80% da largura da tela
          height = 0.9, -- 80% da altura da tela
          -- border = "rounded", -- Borda arredondada (opcional: "single", "double", "solid")
        },
      },
    },
  },
}
