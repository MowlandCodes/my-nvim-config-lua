return {
	"romgrk/barbar.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "lewis6991/gitsigns.nvim" }, -- optional
	config = function()
		require("barbar").setup({})
		vim.opt.showtabline = 2
		vim.g.barbar_auto_setup = false

		-- Tabs Manager
		local map = vim.api.nvim_set_keymap
		map("n", "<C-T>", ":tabnew<Enter>", { noremap = true, silent = true, desc = "New Tab" })
		map("n", "<leader><Left>", ":BufferPrevious<Enter>", { noremap = true, silent = true, desc = "Previous Tab" })
		map("n", "<leader><Right>", ":BufferNext<Enter>", { noremap = true, silent = true, desc = "Next Tab" })
		map("n", "<A-<>", ":BufferMovePrevious<Enter>", { noremap = true, silent = true, desc = "Move tab to right" })
		map("n", "<A->>", ":BufferMoveNext<Enter>", { noremap = true, silent = true, desc = "Move tab to left" })
		map("n", "<A-1>", ":BufferGoto 1<Enter>", { noremap = true, silent = true, desc = "Go to tab 1" })
		map("n", "<A-2>", ":BufferGoto 2<Enter>", { noremap = true, silent = true, desc = "Go to tab 2" })
		map("n", "<A-3>", ":BufferGoto 3<Enter>", { noremap = true, silent = true, desc = "Go to tab 3" })
		map("n", "<A-4>", ":BufferGoto 4<Enter>", { noremap = true, silent = true, desc = "Go to tab 4" })
		map("n", "<A-5>", ":BufferGoto 5<Enter>", { noremap = true, silent = true, desc = "Go to tab 5" })
		map("n", "<A-6>", ":BufferGoto 6<Enter>", { noremap = true, silent = true, desc = "Go to tab 6" })
		map("n", "<A-7>", ":BufferGoto 7<Enter>", { noremap = true, silent = true, desc = "Go to tab 7" })
		map("n", "<A-8>", ":BufferGoto 8<Enter>", { noremap = true, silent = true, desc = "Go to tab 8" })
		map("n", "<A-9>", ":BufferGoto 9<Enter>", { noremap = true, silent = true, desc = "Go to tab 9" })
		map("n", "<A-0>", ":BufferLast<Enter>", { noremap = true, silent = true, desc = "Go to Last Tab" })
		map("n", "<A-c>", ":BufferClose<Enter>", { noremap = true, silent = true, desc = "Close Tab" })
		vim.keymap.set("n", "<A-r>", function()
			local new_name = vim.fn.input("Enter new name: ")
			if new_name ~= "" then
				vim.api.nvim_buf_set_name(0, new_name)
			end
		end, { noremap = true, silent = true, desc = "Rename Tab" })
	end,
}
