return {
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = "cd app && yarn install",
		lazy = false,
		keys = {
			{ "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" },
		}
	},
	{
		'niuiic/typst-preview.nvim',
		dependencies = {
			'niuiic/core.nvim',
		},
	},
	{
		'conornewton/vim-pandoc-markdown-preview',
		dependencies = {
			'skywind3000/asyncrun.vim'
		},
		config = function()
			vim.g.md_args = "-M link-citations=true --lua-filter=columns/columns.lua --citeproc"
		end
	},
}
