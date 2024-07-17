-- Quick move in split-window
-- vim.keymap.set('n', '<C-h>', "<C-w>h", { silent = true })
-- vim.keymap.set('n', '<C-j>', "<C-w>j", { silent = true })
-- vim.keymap.set('n', '<C-k>', "<C-w>k", { silent = true })
-- vim.keymap.set('n', '<C-l>', "<C-w>l", { silent = true })
-- vim.keymap.set('n', '<C-l>', "<C-w>l", { silent = true })

-- Center split
vim.keymap.set('n', '<leader>=', '<C-w>=', { silent = true })

-- Change next/prev buffers
local nextbuffer = function()
  vim.cmd 'BufferNext'
end
local prevbuffer = function()
  vim.cmd 'BufferPrevious'
end
local closebuffer = function()
  vim.cmd 'BufferClose'
end
vim.keymap.set('n', '<Esc><Tab>', nextbuffer, { desc = 'Bar: Next buffer' })
vim.keymap.set('n', '<Esc><BS>', prevbuffer, { desc = 'Bar: Previous buffer' })
vim.keymap.set('n', '<leader>bd', closebuffer, { desc = 'Bar: Close buffer' })

-- Terminal mappings
-- vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]])
-- vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]])
-- vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]])
-- vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]])
-- vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]])
-- vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<Esc><Tab>', nextbuffer, { desc = 'Bar: Previous buffer' })
vim.keymap.set('t', '<Esc><BS>', prevbuffer, { desc = 'Bar: Previous buffer' })
-- vim.keymap.set('t', '<c-l>', [[clear<CR>]])

return {}
