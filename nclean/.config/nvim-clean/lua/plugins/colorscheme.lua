
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        transparency = false,
      },
    },
    cmd = function() vim.cmd.colorscheme "rose-pine" end,
  }
}
