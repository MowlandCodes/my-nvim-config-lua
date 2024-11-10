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
			vim.keymap.set("n", "<leader>ms", ":Mason<CR>", { silent = true })
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
            local bin_path = "C:/Users/mowla/AppData/Local/nvim-data/mason/bin/"
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
                capabilities = capabilities,
                cmd = { bin_path .. "lua-language-server.cmd" },
            })
			lspconfig.ast_grep.setup({
                capabilities = capabilities,
                cmd = { bin_path .. "ast-grep.cmd", bin_path .. "sg.cmd" },
            })
			lspconfig.jedi_language_server.setup({
                capabilities = capabilities,
                cmd = { bin_path .. "jedi-language-server.cmd" },
            })
			lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { bin_path .. "clangd.cmd" },
            })

			-- Keymapping for Tooltip Docs
			vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { silent = true })
			vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, { silent = true})
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { silent = true })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { silent = true })
		end,
	},
}
