return {
  "ellisonleao/gruvbox.nvim",
  enabled = false,
  priority= 1000,
  config = function()
    vim.cmd("colorscheme gruvbox")
    vim.cmd("hi! Normal guibg=NONE ctermbg=NONE")
    vim.cmd("hi! NonText ctermbg=NONE guibg=NONE ")
  end,
}