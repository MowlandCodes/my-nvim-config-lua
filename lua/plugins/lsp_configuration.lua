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
            lspconfig.html.setup({
                capabilities = capabilities,
                cmd = { bin_path .. "vscode-html-language-server.cmd" },
            })

            -- Keymapping for Tooltip Docs
            vim.keymap.set("n", "<leader>lh", function ()
                vim.lsp.buf.hover()
                vim.lsp.buf.hover()
            end, { silent = true, desc = "LSP Hover Tooltip" })
            vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, { silent = true, desc = "LSP Code Action" })
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { silent = true, desc = "LSP Code Reference" })
            vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { silent = true, desc = "LSP Code Definition" })
        end,
    },
}
