return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
                null_ls.builtins.code_actions.textlint,
                null_ls.builtins.formatting.markdownlint,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.pretty_php,
                null_ls.builtins.diagnostics.djlint,
                null_ls.builtins.diagnostics.phpcs,
                null_ls.builtins.formatting.blade_formatter,
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.diagnostics.phpstan,
                null_ls.builtins.formatting.pint,
			},
		})

		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Auto Formatting", silent = true })
	end,
}
