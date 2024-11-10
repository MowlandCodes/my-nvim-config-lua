-- Basic Configuration of NeoVim
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")
vim.cmd("set mouse=a")
vim.cmd("set nohlsearch")
vim.cmd("set expandtab")
vim.cmd("set clipboard=unnamedplus")


-- Extra Keymap
-- Tabs Manager
vim.keymap.set('n', "<leader>T", ":tabnew<Enter>", {})
vim.keymap.set('n', "<leader><Right>", ":tabn<Enter>", {})
vim.keymap.set('n', "<leader><Left>", ":tabp<Enter>", {})
vim.keymap.set('n', "<leader>Q", ":tabc<Enter>", {})
