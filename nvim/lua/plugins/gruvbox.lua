return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      transparent_mode = true, -- 👈 this enables transparency
      terminal_colors = true,
      undercurl = true,
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      bold = true,
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
