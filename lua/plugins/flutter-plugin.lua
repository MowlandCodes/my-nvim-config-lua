return {
	{
		"stevearc/dressing.nvim",
		lazy = false,
		opts = {},
	},
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
		config = function()
			require("flutter-tools").setup()

			-- Flutter Keybindings
			vim.keymap.set({ "n" }, "<leader>fr", ":FlutterRun<CR>", { desc = "Run Flutter App", silent = true })
			vim.keymap.set({ "n" }, "<leader>fd", ":FlutterDevices<CR>", { desc = "Flutter Devices", silent = true })
			vim.keymap.set({ "n" }, "<leader>fe", ":FlutterEmulators<CR>", { desc = "List Flutter Emulators", silent = true })
			vim.keymap.set({ "n" }, "<leader>fR", ":FlutterReload<CR>", { desc = "Reload Flutter App", silent = true })
			vim.keymap.set({ "n" }, "<leader>fq", ":FlutterQuit<CR>", { desc = "Ends Current Flutter Session", silent = true })
		end,
		ft = "dart",
	},
}
