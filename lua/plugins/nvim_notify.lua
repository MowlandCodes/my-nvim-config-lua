return {
    "rcarriga/nvim-notify",
    opts = {
        render = "default",
        timeout = 2500,
        max_height = 10,
        max_width = 80,
    },
    config = function ()
        vim.opt.termguicolors = true
        require("notify").setup({})
        vim.notify = require("notify")
    end
}
