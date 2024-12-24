return {
    "rcarriga/nvim-notify",
    config = function()
        vim.opt.termguicolors = true
        require("notify").setup({
            background_colour = "#181926",
            fps = 60,
            render = "default",
            stages = "slide",
            timeout = 1700,
            max_height = 10,
            max_width = 80,
        })
        vim.notify = require("notify")
    end
}
