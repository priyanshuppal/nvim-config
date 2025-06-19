vim.cmd("set number")
vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.termguicolors = true
vim.cmd("set number relativenumber")

vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>", {})
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>", {})
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>", {})
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>", {})
vim.diagnostic.config({ virtual_text = true })
