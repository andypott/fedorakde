require("telescope").load_extension("fzf")
require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"^target/",
			"^node_modules/",
		},
	},
	pickers = {
		find_files = {
			follow = true,
		},
		live_grep = {
			additional_args = { "-L" },
		},
	},
})
