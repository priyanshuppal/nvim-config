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
        close_if_last_window = false,
        filtered_items = {
          hide_dotfiles = false,
        },
        follow_current_file = {
          enabled = true,         -- This will find and focus the file in the active buffer every time
          --               -- the current file is changed while the tree is open.
          leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },
      buffers = {
        follow_current_file = {
          enabled = true,          -- This will find and focus the file in the active buffer every time
          --              -- the current file is changed while the tree is open.
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },
      window = {
        position = "right",
        mappings = {
          [";"] = "open",
        },
      },
      setup_called = false,
      event_handlers = {

        {
          event = "file_open_requested",
          handler = function()
            -- auto close
            -- vim.cmd("Neotree close")
            -- OR
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })
    vim.keymap.set("n", "<leader>ee", ":Neotree toggle filesystem right<CR>", { desc = "Explorer" })
    vim.keymap.set("n", "<leader>ef", ":Neotree toggle reveal right<CR>", { desc = "Reveal with current file" })
  end,
}
