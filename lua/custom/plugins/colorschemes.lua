return {
  {
    'catppuccin/nvim',
    priority = 500,
    name = 'catppuccin',
    -- config = function()
    -- vim.g.catppuccin_flavour = 'latte' -- latte, frappe, macchiato, mocha
    -- require('catppuccin').setup()
    -- vim.cmd.colorscheme 'catppuccin'
    -- end,
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
}
