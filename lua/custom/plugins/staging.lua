return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"RRethy/vim-illuminate",
		event = "VeryLazy",
		config = function()
			require("illuminate").configure {
				filetypes_denylist = {
					"DiffviewFiles",
					"DressingInput",
					"DressingSelect",
					"Jaq",
					"NeogitCommitMessage",
					"NeogitStatus",
					"NvimTree",
					"Outline",
					"TelescopePrompt",
					"Trouble",
					"alpha",
					"dirvish",
					"fugitive",
					"harpoon",
					"lazy",
					"lir",
					"markdown",
					"mason",
					"minifiles",
					"netrw",
					"oil",
					"qf",
					"spectre_panel",
					"toggleterm",
				},
			}
		end
	},
}
