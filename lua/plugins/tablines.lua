return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons', -- Optional, for file icons
    config = function()
        require('bufferline').setup({
            options = {
                name_formatter = function(buf)
                    return vim.fn.fnamemodify(buf.name, ':t')
                end,
                max_name_length = 25,
                max_prefix_length = 15,
                tab_size = 25,
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(_, _, diagnostics_dict, _)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " "
                        or e == "warning" and "  " or ""
                        s = s .. n .. sym
                    end
                    return s
                end,
                color_icons = true,
                show_buffer_icons = true,
                show_buffer_close_icons = true,
                show_close_icon = true,
                show_tab_indicators = true,
                persist_buffer_sort = true,
                enforce_regular_tabs = true,
                always_show_bufferline = true,
                themable = true
            },
            vim.keymap.set("n", "<leader><Right>", ":BufferLineCycleNext<CR>", { silent = true, desc = "Next Tab Buffer"}),
            vim.keymap.set("n", "<leader><Left>", ":BufferLineCyclePrev<CR>", { silent = true, desc = "Previous Tab Buffer"})
        })
    end,
}
