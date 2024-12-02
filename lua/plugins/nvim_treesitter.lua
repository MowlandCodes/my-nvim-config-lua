return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            auto_install = true,
            highlight = { enable = true },
            indent = {
                enable = true,
                disable = { "lua" }, -- Only for Neovim version under 0.10.x
            },
        })
    end
}
