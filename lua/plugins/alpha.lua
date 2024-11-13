return {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local dashboard = require("alpha")
        local startify = require("alpha.themes.startify")
        -- available: devicons, mini, default is mini
        startify.file_icons.provider = "devicons"
        startify.section.header.val = {
           [[ ███████╗ █████╗ ██████╗ ███╗   ███╗ ██████╗ ███████╗██╗]],
           [[ ██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔═══██╗██╔════╝██║]],
           [[ █████╗  ███████║██████╔╝██╔████╔██║██║   ██║█████╗  ██║]],
           [[ ██╔══╝  ██╔══██║██╔══██╗██║╚██╔╝██║██║   ██║██╔══╝  ██║]],
           [[ ██║     ██║  ██║██║  ██║██║ ╚═╝ ██║╚██████╔╝███████╗███████╗]],
           [[ ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚══════╝]],
        }
        dashboard.setup(
            startify.config
        )
    end,
}
