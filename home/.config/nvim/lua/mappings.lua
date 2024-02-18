local telescope_builtin = require("telescope.builtin")

vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("i", "jj", "<ESC>", nil)
vim.keymap.set("n", "<leader>x", ":Ex<cr>", nil)
vim.keymap.set("n", "<C-d>", "<C-d>zz", nil)
vim.keymap.set("n", "<C-u>", "<C-u>zz", nil)
vim.keymap.set("n", "n", "nzz", nil)
vim.keymap.set("n", "N", "Nzz", nil)
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, nil)
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, nil)
vim.keymap.set("n", "<leader>fd", telescope_builtin.diagnostics, nil)
vim.keymap.set("n", "<leader>fr", telescope_builtin.lsp_references, nil)
vim.keymap.set("n", "<leader>nw", "<cmd>Neorg workspace notes<cr>", nil)
vim.keymap.set("n", "<leader>nr", "<cmd>Neorg return<cr>", nil)
