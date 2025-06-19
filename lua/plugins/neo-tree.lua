return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
      window = {
        position = "float",
      },
      setup_called = false,
    })
    vim.keymap.set("n", "<leader>ee", ":Neotree filesystem float<CR>", { desc = "Explorer" })
    vim.keymap.set("n", "<leader>ef", ":Neotree reveal float<CR>", { desc = "Reveal with current file" })
  end,
}
