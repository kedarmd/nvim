return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup {
            size = 20,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = '1',
            start_in_insert = true,
            insert_mappings = true,
            terminal_mappings = true,
            persist_size = true,
            direction = 'float',
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = 'curved',
                winblend = 0,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                }
            }
        }

        -- Lazygit function
        function _G.lazygit_toggle()
            local Terminal = require('toggleterm.terminal').Terminal
            local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
            lazygit:toggle()
        end

        -- Keybinding for Lazygit
        vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua lazygit_toggle()<CR>", { noremap = true, silent = true })
    end
}
