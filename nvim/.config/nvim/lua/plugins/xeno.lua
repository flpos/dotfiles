return {
  {
    "kyzabuilds/xeno.nvim",
    config = function()
      local xeno = require("xeno")

      xeno.theme("sylvan", {
        background = "#151615",
        accent = "#3b594e",
        properties = {
          contrast = -0.3,
          variation = 0.1,
        },
      })

      xeno.theme("xeno_felipe", {
        background = "#000000",
        accent = "#5449b6",
        properties = {
          contrast = -0.3,
          variation = 0.1,
          lightness = 0,
          chroma = -0.5,
        },
      })

      xeno.theme("sapphire", {
        background = "#1a2332",
        accent = "#4d8fd6",
        properties = {
          variation = 0.60,
          lightness = -0.10,
          chroma = 0.30,
        },
      })

      xeno.theme("sulamerica", {
        accent = "#F05223",
        background = "#222222",
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
            ["@parameter"] = { fg = "@accent.300" },
            ["@type"] = { fg = "@accent.200" },
            ["@type.builtin"] = { fg = "@accent.200" },

            ["@keyword"] = { fg = "@background" },

            ["@string"] = { fg = "@foreground" },
            ["@function.lua"] = { fg = "@foreground" },
          },
        },
      })

      xeno.theme("sulamerica-dim", {
        accent = "#F05223",
        background = "#222222",
        foreground = "#aaaaaa",
        properties = {
          lightness = 0,
          contrast = 1,
          chroma = 1,
        },
        transparent = false,
        min_contrast = 4.5,
        highlights = {
          syntax = {
            ["@boolean"] = { fg = "@accent.200" },
            ["@number"] = { fg = "@accent.200" },
            ["@variable"] = { fg = "@accent.400" },
            ["@parameter"] = { fg = "@accent.300" },
            ["@type"] = { fg = "@accent.200" },
            ["@type.builtin"] = { fg = "@accent.200" },

            ["@keyword"] = { fg = "@background" },

            ["@string"] = { fg = "@foreground" },
            ["@function.lua"] = { fg = "@foreground" },
          },
        },
      })

      vim.cmd("colorscheme sulamerica-dim")
    end,
  },
}
