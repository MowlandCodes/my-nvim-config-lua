return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },

        -- Neo-Tree Keybindings
        vim.keymap.set('n', '<F2>', ':Neotree toggle<CR>', { desc = "Neo-Tree Reveal", silent = true })
    },
}
