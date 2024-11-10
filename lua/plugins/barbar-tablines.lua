return {
    "romgrk/barbar.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "lewis6991/gitsigns.nvim" }, -- optional
    config = function()
        require("barbar").setup({})
        vim.opt.showtabline = 2
        vim.g.barbar_auto_setup = false

        -- Tabs Manager
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        map('n', '<C-T>', ":tabnew<Enter>", opts)
        map('n', '<C-Left>', ":BufferPrevious<Enter>", opts)
        map('n', '<C-Right>', ":BufferNext<Enter>", opts)
        map('n', '<A-<>', ":BufferMovePrevious<Enter>", opts)
        map('n', '<A->>', ":BufferMoveNext<Enter>", opts)
        map('n', '<A-1>', ":BufferGoto 1<Enter>", opts)
        map('n', '<A-2>', ":BufferGoto 2<Enter>", opts)
        map('n', '<A-3>', ":BufferGoto 3<Enter>", opts)
        map('n', '<A-4>', ":BufferGoto 4<Enter>", opts)
        map('n', '<A-5>', ":BufferGoto 5<Enter>", opts)
        map('n', '<A-6>', ":BufferGoto 6<Enter>", opts)
        map('n', '<A-7>', ":BufferGoto 7<Enter>", opts)
        map('n', '<A-8>', ":BufferGoto 8<Enter>", opts)
        map('n', '<A-9>', ":BufferGoto 9<Enter>", opts)
        map('n', '<A-0>', ":BufferLast<Enter>", opts)
        map('n', '<A-c>', ":BufferClose<Enter>", opts)

    end,
}
