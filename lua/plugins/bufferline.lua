return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	version = "*",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				style_preset = bufferline.style_preset.minimal,

				mode = "buffers",
				seperator_style = "slant",
				indicator = {
					style = "underline",
				},
                diagnostics = "nvim_lsp",
			},
		})
	end,
}
