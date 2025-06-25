return {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = { "rafamadriz/friendly-snippets" },

    version = "1.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "none",
            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
            ["<CR>"] = { "accept", "fallback" }, -- show with a list of providers
            ["<C-space>"] = {
                function(cmp)
                    cmp.show()
                end,
            },

            -- control whether the next command will be run when using a function
            ["<C-n>"] = {
                function(cmp)
                    if some_condition then
                        return
                    end -- runs the next command
                    return true -- doesn't run the next command
                end,
                "select_next",
            },
        },
        appearance = {
            nerd_font_variant = "mono",
        },

        completion = { documentation = { auto_show = false } },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
