-- shortforms
local v = vim

-- vim options
v.cmd("set number")
v.g.mapleader = " "
v.opt.termguicolors = true
v.cmd("set number relativenumber")
v.opt.cursorline = true
v.diagnostic.config({ virtual_text = true })
v.opt.clipboard:append("unnamedplus")
v.opt.splitright = true
v.opt.splitbelow = true
v.opt.expandtab = true -- Use spaces instead of tabs
v.opt.shiftwidth = 4   -- Indent by 4 spaces
v.opt.tabstop = 4      -- A tab is displayed as 4 spaces
-- keymaps
v.keymap.set("n", "<C-k>", ":wincmd k<CR>", {})
v.keymap.set("n", "<C-j>", ":wincmd j<CR>", {})
v.keymap.set("n", "<C-h>", ":wincmd h<CR>", {})
v.keymap.set("n", "<C-l>", ":wincmd l<CR>", {})
v.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

v.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Vertical" })
v.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Horizontal" })
v.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Split equal size" })
v.keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })

v.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
v.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
v.keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
v.keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })
v.keymap.set("n", "<leader>tf", ":tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set("n","<S-Tab>","<Cmd>BufferLineCyclePrev<CR>",{ noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<leader>q", "<Cmd>bd<CR>", { noremap = true, silent = true, desc = "Close buffer" })
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLinePick<CR>", { noremap = true, silent = true, desc = "Pick buffer" })
