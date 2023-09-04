return {
    -- Copilot
    {
        'projekt0n/github-nvim-theme',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('github-theme').setup({
                -- ...
            })

            vim.cmd('colorscheme github_dark')
        end,
    },
    {
        'Shatur/neovim-ayu',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()

        end,
    }, {
    'olivercederborg/poimandres.nvim'
    ,
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()

    end,
},
    {
        "zbirenbaum/copilot.lua",
        enabled = true,
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                panel = {
                    enabled = true,
                    auto_refresh = true,
                    keymap = {
                        jump_next = "<c-j>",
                        accept = "<c-k>",
                        refresh = "r",
                        open = "<M-CR>",
                    },
                    layout = {
                        position = "bottom", -- | top | left | right
                        ratio = 0.4,
                    },
                },
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    debounce = 75,
                    keymap = {
                        accept = "<c-a>",
                        accept_word = false,
                        accept_line = false,
                        next = "<c-j>",
                        prev = "<c-k>",
                        dismiss = "<C-e>",
                    },
                },
            })
        end
    },
    -- copilot cmp
    {
        "zbirenbaum/copilot-cmp",
        config = function()
            require("copilot_cmp").setup()
        end
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
    { "catppuccin/nvim",      name = "catppuccin" },
    { 'jwalton512/vim-blade', lazy = true,        ft = "php" },
    {
        'fatih/vim-go',
        lazy = true,
        build = ":GoInstallBinaries",
        ft = "go",
    },
    
}
