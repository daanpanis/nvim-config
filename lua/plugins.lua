local plugins = {
    -- make packer auto updateable :)
    { "wbthomason/packer.nvim" },

    -- Useful functions for lua configuration
    { "svermeulen/vimpeccable" },

    -- surround.nvim
    { 
        "blackCauldron7/surround.nvim",
        config = require("config.surround")
    },

    -- File explorer sidebar
    {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = require("config.nvim-tree")
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = require("config.treesitter")
    },
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    { 'p00f/nvim-ts-rainbow' },

    -- Commenting
    {
        "preservim/nerdcommenter",
        config = require("config.nerdcommenter")
    },
-- Auto closing parenthesis and more
    {
        "windwp/nvim-autopairs",
        config = require("config.autopairs")
    }
}

_G.vimp = require("vimp")

require("packer").startup(function()
    for _, plugin in pairs(plugins) do
        use(plugin)
    end
end)
