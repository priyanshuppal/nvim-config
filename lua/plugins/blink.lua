return {
    "saghen/blink.cmp",
    dependencies = {
        {
            "rafamadriz/friendly-snippets",
            "huijiro/blink-cmp-supermaven",
        },
    },

    version = "1.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "none",
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-l>"] = { "accept", "fallback" }, -- show with a list of providers
            ["<C-space>"] = {
                function(cmp)
                    cmp.show()
                end,
            },
        },
        appearance = {
            nerd_font_variant = "mono",
        },
        completion = {
            documentation = { auto_show = false },
            menu = {
                -- Don't automatically show the completion menu
                auto_show = false,
            },
            ghost_text = { enabled = false },
            trigger = {
                prefetch_on_insert = false,
                show_in_snippet =false,
                show_on_backspace = false,
                show_on_backspace_in_keyword =false,
                show_on_insert = false,
            },
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
            providers = {
            },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    }
}
