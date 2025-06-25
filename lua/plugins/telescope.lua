return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
            local telescope = require("telescope")
            telescope.setup({
                defaults = {
                    path_display = {"smart"},
                }
            })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Fuzzy Grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "List Buffers" })
			vim.keymap.set("n", "<leader>fc", function ()
			    builtin.find_files {
                    cwd = vim.fn.stdpath("config")
                }
			end, { desc = "List Buffers" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
