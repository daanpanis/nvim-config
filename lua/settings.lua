vim.o.number=true
vim.o.relativenumber=true
vim.o.tabstop=8
vim.o.softtabstop=0
vim.o.expandtab=true
vim.o.shiftwidth=4
vim.o.smarttab=true
vim.o.hidden=true
vim.o.pumheight=10
vim.o.termguicolors=true
vim.o.backup=false
vim.o.swapfile=false
vim.o.splitbelow=true
vim.o.splitright=true
vim.o.scrolloff=8
vim.o.sidescrolloff=8
vim.o.undodir=vim.fn.stdpath("cache") .. "/undo"
vim.o.undofile=true
vim.o.writebackup=false
vim.o.updatetime=300
vim.o.mouse="a"
vim.o.signcolumn="yes"
vim.o.showtabline=2
vim.o.cursorline=true
vim.g.mapleader=" "

vim.cmd("filetype on")
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.cmd("hi NonText guifg=bg")
