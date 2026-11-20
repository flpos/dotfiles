local xeno = require("xeno")

-- Comentário
xeno.setup({
  accent = "#F05223",
  background = "#22222a",
  foreground = "#ffffff",
  properties = {
    lightness = 0.7,
    contrast = 0.3,
    chroma = 0.5,
  },
  transparent = false,
  min_contrast = 4.5,
  highlights = {
    syntax = {
      ["@boolean"] = { fg = "@accent.200" },
      ["@number"] = { fg = "@accent.200" },
      ["@variable"] = { fg = "@accent.400" },
      ["@type"] = { fg = "@accent.200" },
      ["@type.builtin"] = { fg = "@accent.200" },

      ["@keyword"] = { fg = "@background" },

      ["@string"] = { fg = "@foreground" },
      ["@function.lua"] = { fg = "@foreground" },
    },
  },
})
