return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup{
            defaults = {
                -- default configuration for telescope goes here:
                -- config_key = value,
                mappings = {
                    i = {
                        -- map actions.which_key to <C-h> (default: <C-/>)
                        -- actions.which_key shows the mappings for your picker,
                        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                        ["<C-t>"] = function(bufnr) require("telescope.actions.set").edit(bufnr, "tab drop") end
                    }
                }
            },
        }

        local function is_git_repo()
            vim.fn.system("git rev-parse --is-inside-work-tree")
            return vim.v.shell_error == 0
        end

        local function find_git_root()
            local dot_git_path = vim.fn.finddir(".git", ".;")
            return vim.fn.fnamemodify(dot_git_path, ":h")
        end

        local function file_picker_opts()
            local opts = {}
            if is_git_repo() then
                opts.cwd = find_git_root()
            end
            return opts
        end

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<C-p>',
            function()
                local opts = file_picker_opts()
                builtin.find_files(opts)
            end,
            { noremap = true }
        )
        vim.keymap.set('n', '\\\\',
            function()
                local opts = file_picker_opts()
                builtin.grep_string(opts)
            end,
            { noremap = true }
        )
        vim.keymap.set('n', '<leader>fg',
            function()
                local opts = file_picker_opts()
                builtin.live_grep(opts)
            end,
            { noremap = true }
        )
    end
}
