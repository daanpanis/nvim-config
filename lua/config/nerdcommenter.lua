return function()
    -- Adds one space after comment symbol
    vim.g.NERDSpaceDelims = 1
    -- Allows commenting of empty lines
    vim.g.NERDCommentEmptyLines = 1

    -- Use Ctrl+/ to do single line comments
    vimp.nmap("<C-_>", "<plug>NERDCommenterToggle")
    vimp.vmap("<C-_>", "<plug>NERDCommenterToggle | gv")
end
