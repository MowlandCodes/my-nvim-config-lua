return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup({
            app = "browser"
        })
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

        vim.keymap.set("n", "<leader>pm", "<cmd>PeekOpen<cr>", { desc = "Peek Markdown", silent = true })
        vim.keymap.set("n", "<leader>pc", "<cmd>PeekClose<cr>", { desc = "Peek Close", silent = true })
    end,
}
