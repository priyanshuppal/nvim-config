return {
    "supermaven-inc/supermaven-nvim",
    config = function()
        require("supermaven-nvim").setup({
            keymaps = {
                accept_suggestion = "<Tab>",
            },
        })
        vim.keymap.set("n", "<leader>sm", "<cmd>SupermavenToggle <cr>", { noremap = true, silent = true, desc = "Supermaven Toggle" })
    end,
}
