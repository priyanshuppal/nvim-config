return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set("n", "<leader>e", ":Neotree filesystem float<CR>", {desc = "Explorer"})
    vim.keymap.set("n", "<leader>gs", ":Neotree git_status float<CR>", {desc = "Git Status"})
  end,
}
