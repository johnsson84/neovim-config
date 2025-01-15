return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = true,
        priority = 1000,
        opts = function()
            return {
                transparent = true,
            }
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        priority = 1000,
    },
    {
        "shaunsingh/nord.nvim",
        lazy = true,
        priority = 1000,
    },
    {
        "rose-pine/neovim",
        lazy = true,
        priority = 1000,
    },
    {
        "neanias/everforest-nvim",
        lazy = true,
        priority = 1000,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = true,
        config = function()
            require("catppuccin").setup({
                transparent_background = false,
            })
        end,
    },
    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000,
        config = function()
            require("github-theme").setup({
                specs = {
                    -- Custom duskfox with black background
                    github_dark = {
                        bg1 = "#21232B", -- Black background
                    },
                },
            })
        end, -- make sure to load this before all the other start plugins
    },
}
