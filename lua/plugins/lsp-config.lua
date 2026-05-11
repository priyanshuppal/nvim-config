return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		{
			"mason-org/mason-lspconfig.nvim",
			opts = {
				auto_install = true,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			local servers = { "lua_ls", "ts_ls", "eslint" }
			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server)
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "hover" })
			vim.keymap.set("n", "<leader>kl", ":Telescope diagnostics<CR>", { desc = "Errors/Warnings" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
		end,
	},
}
