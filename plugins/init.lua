return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        build = ":Copilot auth",
        opts = {
            suggestion = { enabled = true },
            panel = { enabled = false },
        },
    },
    {
        'folke/tokyonight.nvim'
    },
    {
        "fatih/vim-go",
    },
    {
        "Shatur/neovim-ayu"
    },
    { "catppuccin/nvim", name = "catppuccin" },
    {
        "zbirenbaum/copilot-cmp",
        dependencies = "copilot.lua",
        opts = {},
        config = function(_, opts)
            local copilot_cmp = require("copilot_cmp")
            copilot_cmp.setup(opts)
            -- attach cmp source whenever copilot attaches
            -- fixes lazy-loading issues with the copilot cmp source
            require("lazyvim.util").on_attach(function(client)
                if client.name == "copilot" then
                    copilot_cmp._on_insert_enter()
                end
            end)
        end,
    },
    {
        'fatih/vim-go',
        lazy = true,
        build = ":GoInstallBinaries",
        ft = "go",
    },
    {
        'nvim-neorg/neorg',
        run = ':Neorg sync-parsers',
        event = 'VeryLazy',
        enabled = true,
        version = '2.0.1',
        config = function()
            require('neorg').setup({
                load = {
                    ['core.defaults'] = {},
                    ['core.norg.concealer'] = {},
                    ['core.norg.completion'] = {
                        config = {
                            engine = 'nvim-cmp',
                        },
                    },
                    ['core.norg.dirman'] = {
                        config = {
                            workspaces = {
                                notes = '~/notes',
                            },
                        },
                    },
                },
            })
        end,
    },
}
