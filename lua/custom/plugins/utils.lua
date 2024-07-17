-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  -- 'chaoren/vim-wordmotion',
  -- },
  {
    'simrat39/rust-tools.nvim',
    config = function()
      local rt = require 'rust-tools'
      rt.setup {}
      rt.inlay_hints.enable()
    end,
  },
  {
    'folke/zen-mode.nvim',
    opts = {
      window = {
        width = 120,
        options = {
          number = true,
          relativenumber = true,
          colorcolumn = '120',
        },
      },
    },
  },
}
