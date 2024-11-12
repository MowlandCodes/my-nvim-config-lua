return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({})

		-- Spawning Codeium Chat in Browser
		vim.keymap.set("n", "<leader>aa", ":Codeium Chat<CR>", { silent = true })
	end,
}
