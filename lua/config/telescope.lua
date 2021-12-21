return function()
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    require("telescope").setup {
        defaults = {
            mappings = {
                i = {
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-k>"] = actions.move_selection_previous,
                    ["<CR>"] = actions.select_default + actions.center,
                }
            }
        }
    }

    vimp.nnoremap("<leader>f", builtin.find_files)
    vimp.nnoremap("<leader>st", builtin.live_grep)
    vimp.nnoremap("<leader>bb", builtin.buffers)
end
