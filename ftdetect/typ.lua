vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*.typ',
  callback = function()
    -- typst ft support was added
    -- vim.cmd([[set filetype=typst]])
    vim.opt.colorcolumn = '100'
  end,
})
