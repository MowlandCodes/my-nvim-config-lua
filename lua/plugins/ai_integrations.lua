return {
    {
        "Exafunction/codeium.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("codeium").setup({})

            -- Spawning Codeium Chat in Browser (using formatted string)
            vim.api.nvim_buf_set_keymap(0, "n", "<Leader>aa", ":Codeium Chat<CR>", { silent = true, desc = "Codeium Chat" })
        end,
    },
    {
        "David-Kunz/gen.nvim",
        config = function()
            -- Import the gen plugin
            local gen = require("gen")

            -- Configure the gen plugin
            gen.setup({
                -- Display the model when it is being used
                show_model = true,

                -- Display the prompt when it is being used
                show_prompt = true,

                -- Display the generated code in a split window
                display_mode = "float",
                no_auto_close = true,
            })

            vim.keymap.set({ "n", "v" }, '<leader>al', ":Gen<CR>", { silent = true, desc = "Ollama Panel" })
            vim.keymap.set({ "n", "v" }, '<leader>ac', ":Gen Chat<CR>", { silent = true, desc = "Ollama Chat"})

        end,
    },
}
