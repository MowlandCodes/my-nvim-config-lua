return {
    {
        "stevearc/dressing.nvim",
        lazy = false,
        opts = {}
    },
    {
        "akinsho/flutter-tools.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "stevearc/dressing.nvim",
        },
        config = function()
            require("flutter-tools").setup()
        end,
        ft = "dart"
    },
}
