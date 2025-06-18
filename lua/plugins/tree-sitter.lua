return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Optional: auto-update parsers
  config = function()
	local config = require("nvim-treesitter.configs")
	config.setup({
		ensure_installed = {"lua", "javascript", "typescript", "json", "yaml", "powershell"},
		highlight = { enable = true },
		indent = { enable = true},
	})
	end
}
