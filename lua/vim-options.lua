-- shortforms
local v = vim

local map = v.keymap.set
-- vim options
v.cmd("set number")
v.cmd("set ignorecase")
v.cmd("set smartcase")
v.g.mapleader = " "
v.cmd("set number relativenumber")
v.opt.termguicolors = true
v.diagnostic.config({ virtual_text = true })
v.opt.clipboard:append("unnamedplus")
v.opt.splitright = true
v.opt.splitbelow = true
v.opt.expandtab = true
v.opt.shiftwidth = 2
v.opt.tabstop = 2
v.opt.softtabstop = 2
v.opt.smartindent = true
v.opt.winborder = "rounded"

v.opt.fixendofline = true
-- keymaps
-- map("n", "<C-k>", ":wincmd k<CR>", {})
-- map("n", "<C-j>", ":wincmd j<CR>", {})
-- map("n", "<C-h>", ":wincmd h<CR>", {})
-- map("n", "<C-l>", ":wincmd l<CR>", {})
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })


map("n", "<leader>sv", "<C-w>v", { desc = "Split Vertical" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split Horizontal" })
map("n", "<leader>se", "<C-w>=", { desc = "Split equal size" })
map("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })
map("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
map("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
map("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
map("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -


map("n", "<C-t>", ":tabnew<CR>", { desc = "Open new tab" })
map("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
map("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
map("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })
map("n", "<leader>tf", ":tabnew %<CR>", { desc = "Open current buffer in new tab" })

map("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
map(
	"n",
	"<S-Tab>",
	"<Cmd>BufferLineCyclePrev<CR>",
	{ noremap = true, silent = true, desc = "Previous buffer" }
)
map("n", "<leader>q", "<Cmd>bd<CR>", { noremap = true, silent = true, desc = "Close buffer" })
map("n", "<leader>Q", "<Cmd>bd!<CR>", { noremap = true, silent = true, desc = "Close buffer" })
map("n", "<leader>bp", "<Cmd>BufferLinePick<CR>", { noremap = true, silent = true, desc = "Pick buffer" })
-- Trim trailing whitespace
v.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})
vim.opt.listchars = {
  tab = "▸·",
  space = "·",
  trail = "•",
  extends = ">",
  precedes = "<",
}
local uv = vim.uv

vim.api.nvim_create_autocmd({ 'VimEnter', 'VimLeave' }, {
	callback = function()
		if vim.env.TMUX_PLUGIN_MANAGER_PATH then
			uv.spawn(vim.env.TMUX_PLUGIN_MANAGER_PATH .. '/tmux-window-name/scripts/rename_session_windows.py', {})
		end
	end,
})
