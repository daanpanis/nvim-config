function increase_tree_size()
    local view = require'nvim-tree.view'
    view.View.width = view.View.width + 2
    vim.cmd("vertical resize +2")
end

function decrease_tree_size()
    local view = require'nvim-tree.view'
    view.View.width = view.View.width - 2
    vim.cmd("vertical resize -2")
end

return function()
    vimp.nnoremap({'silent'},"<Leader>e", ":NvimTreeToggle<CR>")

    vim.g.nvim_tree_bindings = {
      { key = "<C-S-l>", cb = ":lua increase_tree_size()<cr>" },
      { key = "<C-S-h>", cb = ":lua decrease_tree_size()<cr>" }
    }

    require("nvim-tree").setup {
        auto_close = true,
        hijack_cursor=true,
        update_cwd=true,
        update_focused_file = {
            enable      = true,
            update_cwd  = true,
        },
    }

    vim.g.nvim_tree_auto_resize=0
    vim.g.nvim_tree_auto_close=1
    vim.g.nvim_tree_follow_update_path=1

end
