return {
	{
		"catppuccin/nvim",
		priority = 500,
		name = "catppuccin",
		config = function()
			vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
			require("catppuccin").setup()
			vim.cmd.colorscheme 'catppuccin'
			-- vim.o.background = 'light'
		end
	},
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	config = function()
	-- 		vim.cmd.colorscheme 'kanagawa'
	-- 	end,
	-- },
}
