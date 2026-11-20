require("xeno").setup({
  background = "#222222",
  accent = "#F05223",
  properties = {
    contrast = 1.0,
    variation = 0.0,
    chroma = 1.0,
    lightness = 0.0,
  },
  min_contrast = 4.50,
  transparent = false,
  foreground = "#aaaaaa",
  highlights = {
    syntax = {
      ["@function.lua"] = {
        fg = "@foreground"
      },
      ["@string"] = {
        fg = "@foreground"
      },
      ["@keyword"] = {
        fg = "@background"
      },
      ["@type.builtin"] = {
        fg = "@accent.200"
      },
      ["@type"] = {
        fg = "@accent.200"
      },
      ["@parameter"] = {
        fg = "@accent.300"
      },
      ["@variable"] = {
        fg = "@accent.400"
      },
      ["@number"] = {
        fg = "@accent.200"
      },
      ["@boolean"] = {
        fg = "@accent.200"
      }
    }
  },
})
vim.g.colors_name = "sulamerica-dim"
