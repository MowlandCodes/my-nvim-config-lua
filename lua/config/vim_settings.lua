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
vim.o.statusline = "%f"
vim.opt.smartindent = true
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor-blinkwait700-blinkoff400-blinkon250," ..
                    "i-ci-ve:ver25-Cursor/lCursor-blinkwait700-blinkoff400-blinkon250," ..
                    "r-cr:hor20-Cursor/lCursor-blinkwait700-blinkoff400-blinkon250," ..
                    "o:hor50"

vim.opt.wrap = false
