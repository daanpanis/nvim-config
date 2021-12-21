return function()
    vim.cmd([[
        au BufReadPost,BufNewFile *.s call timer_start(1000, { tid -> execute('echo "ABC"')})
    ]])
end
