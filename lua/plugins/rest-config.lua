return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"rest-nvim/tree-sitter-http",
		opts = function(_, opts)
			opts.ensure_installed = opts.ensure_installed or {}
			table.insert(opts.ensure_installed, "http")
		end,
	},
	config = function() vim.keymap.set("n", "<leader>ch", "<cmd>Rest run<CR>", { desc = "Execute HTTP Request" }) end,
}
