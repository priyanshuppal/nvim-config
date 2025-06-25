return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
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
        input = {
            icon = " ",
            icon_hl = "SnacksInputIcon",
            icon_pos = "left",
            prompt_pos = "title",
            win = { style = "input" },
            expand = true,
        },
        dim = {},
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
            left = { "sign" },
            right = { "git" },
            git = { patterns = { "GitSign" } },
            refresh = 50,
        },
    },
    keys = {
        { "<leader>sse", function() Snacks.scroll.enable() end, desc = "Enable scroll" },
    },
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                -- Setup some globals for debugging (lazy-loaded)
                _G.dd = function(...) Snacks.debug.inspect(...) end
                _G.bt = function() Snacks.debug.backtrace() end
                vim.print = _G.dd -- Override print to use snacks for `:=` command

                -- Create some toggle mappings
                Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>tw")
                Snacks.toggle.dim():map("<leader>sd")
            end,
        })
    end,
}
