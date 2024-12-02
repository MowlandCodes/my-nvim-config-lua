return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
				PATH = "prepend",
			})
			vim.keymap.set("n", "<leader>ms", ":Mason<CR>", { silent = true, desc = "Mason LSP Manager" })
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities,
			})
			lspconfig.jedi_language_server.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			-- Keymapping for Tooltip Docs
			vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { silent = true, desc = "LSP Hover Tooltip" })
			vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, { silent = true, desc = "LSP Code Action" })
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { silent = true, desc = "LSP Code Reference" })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { silent = true, desc = "LSP Code Definition" })
		end,
	},
}
