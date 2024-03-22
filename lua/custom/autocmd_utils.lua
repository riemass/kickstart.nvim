-- Terminal group - on enter/exit
local terminal_group = vim.api.nvim_create_augroup('TerminalGroup', { clear = true })
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
	group = terminal_group,
	pattern = "term://*",
	command = "startinsert",
})

vim.api.nvim_create_autocmd({ "BufLeave" }, {
	group = terminal_group,
	pattern = "term://*",
	command = "stopinsert",
})

-- Fix for https://github.com/nvim-telescope/telescope.nvim/issues/2027
vim.api.nvim_create_autocmd("WinLeave", {
	callback = function()
		if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
		end
	end,
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
