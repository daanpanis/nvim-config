return function()
    require("nvim-treesitter.configs").setup {
        ensure_installed = "all",
        highlight = {
            enable = true
        },
        textobjects = {
            select = {
                enable = true,
                lookahead = true,

                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = "@class.inner",
                    ["ab"] = "@block.outer",
                    ["ib"] = "@block.inner",
                    ["ap"] = "@parameter.outer",
                    ["ip"] = "@parameter.inner",
                    ["a/"] = "@comment.outer",
                },
            }
        },
        rainbow = {
            enable = true,
        }
    }
end
