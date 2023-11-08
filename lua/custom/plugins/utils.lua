-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'chaoren/vim-wordmotion',
	},
	{
		'ethanholz/nvim-lastplace',
		opts = {
			lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
			lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
			lastplace_open_folds = true
		}
	},
	{
		'simrat39/rust-tools.nvim',
		config = function()
			local rt = require 'rust-tools'
			rt.setup({})
			rt.inlay_hints.enable()
		end,
	},
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = 120,
				options = {
					number = true,
					relativenumber = true,
					colorcolumn = "120",
				}
			}
		}
	},
	{
		"andymass/vim-matchup",
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end,
	},
	-- {
	-- 	"folke/flash.nvim",
	-- 	event = "VeryLazy",
	-- 	---@type Flash.Config
	-- 	opts = {},
	-- 	-- stylua: ignore
	-- 	keys = {
	-- 		{ "s", mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" },
	-- 		{ "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
	-- 		{ "r", mode = "o",               function() require("flash").remote() end,     desc = "Remote Flash" },
	-- 		{
	-- 			"R",
	-- 			mode = { "o", "x" },
	-- 			function() require("flash").treesitter_search() end,
	-- 			desc =
	-- 			"Treesitter Search"
	-- 		},
	-- 		{
	-- 			"<c-s>",
	-- 			mode = { "c" },
	-- 			function() require("flash").toggle() end,
	-- 			desc =
	-- 			"Toggle Flash Search"
	-- 		},
	-- 	},
	-- }
}
