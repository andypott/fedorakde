return {
	{
		"nvim-neorg/neorg",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			local neorg = require("neorg")
			neorg.setup({
				load = {
					["core.defaults"] = {},
					["core.qol.toc"] = { config = { close_after_use = true } },
					["core.concealer"] = { config = { folds = false } },
					["core.completion"] = { config = { engine = "nvim-cmp" } },
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/notes",
							},
						},
					},
				},
			})
			vim.keymap.set("n", "<leader>nw", "<cmd>Neorg workspace notes<cr>", nil)
			vim.keymap.set("n", "<leader>nr", "<cmd>Neorg return<cr>", nil)
		end,
	},
}
