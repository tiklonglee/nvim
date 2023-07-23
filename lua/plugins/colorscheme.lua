return {
    {
        "catppuccin/nvim", name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                no_italic = true,
            })
            -- vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
    {
        "rose-pine/neovim", name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = {
                    italic = false,
                },
            })
            vim.cmd.colorscheme("rose-pine")
        end
    },
}
