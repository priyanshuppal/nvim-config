return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = {
            enabled = true,
            notify = true,
            size = 1024 * 1024 * 2,
        },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = false },
        notifier = { enabled = false },
        quickfile = { enabled = false },
        scroll = {
            enabled = true,
            animate = {
                duration = { step = 15, total = 250 },
                easing = "linear",
            },
            -- faster animation when repeating scroll after delay
            animate_repeat = {
                delay = 100, -- delay in ms before using the repeat animation
                duration = { step = 5, total = 50 },
                easing = "linear",
            },
        },
        statuscolumn = {
            enabled = true,
            left = {  "sign" },
            right = { "git" },
            git = { patterns = { "GitSign" } },
            refresh = 50,
        },
        words = { enabled = false },
    },
}
