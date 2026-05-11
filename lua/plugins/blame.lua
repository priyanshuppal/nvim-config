return {
	{
		"FabijanZulj/blame.nvim",
		lazy = false,
		config = function()
			require("blame").setup({})
			vim.keymap.set("n", "<leader>lgb", "<cmd>BlameToggle window<CR>" , { desc = "Substitute line" })
		end,
	},
}
