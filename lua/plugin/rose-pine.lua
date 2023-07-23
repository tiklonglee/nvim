return {
    'rose-pine/neovim', name = 'rose-pine',
    lazy = false,
    config = function()
        require("rose-pine").setup({ disable_italics = true })
        vim.cmd.colorscheme("rose-pine")
    end
}
