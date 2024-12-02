return {
	"VonHeikemen/fine-cmdline.nvim",
	config = function()
		require("fine-cmdline").setup({
            cmdline = {
                smart_history = true,
                prompt = "Command> ",
            },
            vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
        })
	end,
}
