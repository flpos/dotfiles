require("xeno").setup({
  background = "#222222",
  accent = "#F05223",
  properties = {
    contrast = 0.3,
    variation = 0.0,
    chroma = 0.5,
    lightness = 0.7,
  },
  min_contrast = 4.50,
  transparent = false,
  foreground = "#ffffff",
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
vim.g.colors_name = "sulamerica"
