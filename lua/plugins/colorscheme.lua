return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("tokyonight-night");
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin"
    },
    {
        "navarasu/onedark.nvim",
        config = function()
            -- require('onedark').setup{
            --     style = 'darker'
            -- }
            vim.cmd.colorscheme("onedark")
        end
    }
}
