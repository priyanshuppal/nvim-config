require("config.lazy")
require("vim-options")
vim.cmd("highlight Normal guibg=NONE")
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("lazy").update({ show = false })
	end,
})
