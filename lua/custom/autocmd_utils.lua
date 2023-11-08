-- Terminal group - on enter/exit
local terminal_group = vim.api.nvim_create_augroup('TerminalGroup', { clear = true })
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	group = terminal_group,
	pattern = "term://*",
	command = "startinsert",
})

vim.api.nvim_create_autocmd({ "WinEnter" }, {
	group = terminal_group,
	pattern = "term://*",
	command = "startinsert",
})

vim.api.nvim_create_autocmd({ "BufLeave" }, {
	group = terminal_group,
	pattern = "term://*",
	command = "stopinsert",
})

-- Trim whitespace on file. Useful when no LSP is present (git commit message, etc.).
local del_ws_group = vim.api.nvim_create_augroup('DeleteWhitespace', { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	group = del_ws_group,
	pattern = "*",
	callback = function()
		local savecursor = vim.fn.getpos(".")
		vim.cmd([[%s/\s\+$//e]])
		vim.fn.setpos(".", savecursor);
	end
})

return {}
