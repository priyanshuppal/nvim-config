return {
    "supermaven-inc/supermaven-nvim",
    config = function()
        require("supermaven-nvim").setup({
            keymaps = {
                accept_suggestion = "<Tab>",
            },
            disable_inline_completion = false,
        })
        vim.keymap.set(
            "n",
            "<leader>tm",
            "<cmd>SupermavenToggle <cr>",
            { noremap = true, silent = true, desc = "Toggle SuperMaven" }
        )
    end,
}
