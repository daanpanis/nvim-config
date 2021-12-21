-- vimp.noremap({"silent"}, "<C-h>", "<C-w>h")
-- vimp.noremap({"silent"}, "<C-j>", "<C-w>j")
-- vimp.noremap({"silent"}, "<C-k>", "<C-w>k")
-- vimp.noremap({"silent"}, "<C-l>", "<C-w>l")
vim.cmd([[
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l
]])

vimp.noremap({"silent"}, "<C-S-k>", ":resize -2<CR>")
vimp.noremap({"silent"}, "<C-S-j>", ":resize +2<CR>")
vimp.noremap({"silent"}, "<C-S-h>", ":vertical resize -2<CR>")
vimp.noremap({"silent"}, "<C-S-l>", ":vertical resize +2<CR>")
vimp.noremap({"silent"}, "<Leader>h", ":noh<CR>")

vimp.noremap("<C-Right>", function()
    print("Hello World")
end)
