local plugins = {
    -- make packer auto updateable :)
    { "wbthomason/packer.nvim" },

    {
      "romgrk/barbar.nvim",
      requires = {"kyazdani42/nvim-web-devicons"},
      config = require("config.barbar")
    },

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
    },

    -- GAS assembly syntax highlighting.
    { "Shirk/vim-gas" },

    -- Theme
    { "bluz71/vim-moonfly-colors" },
    {"projekt0n/github-nvim-theme"},
    {"shaeinst/roshnivim-cs"},

    -- Fuzzy finding.
    {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = require("config.telescope")
    },

    {
        "stevearc/dressing.nvim",
        config = require("config.dressing")
    },

    { "hrsh7th/vim-vsnip" },
    { "hrsh7th/vim-vsnip-integ" },

    {"bohlender/vim-smt2"},

    -- Completion.
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-vsnip" },
    { "hrsh7th/cmp-buffer" },
    {
        "hrsh7th/nvim-cmp",
        config = require("config.cmp")
    },

    -- LSP
    { "nvim-lua/lsp_extensions.nvim" },
    { 
        "onsails/lspkind-nvim",
        config = require("config.lspkind")
    },
    { 
        "RishabhRD/nvim-lsputils",
        requires = { "RishabhRD/popfix" },
        config = require("config.lsputils")
    },
    
    {
        "neovim/nvim-lspconfig",
        config = require("config.lsp")
    },

    {
        "sudormrfbin/cheatsheet.nvim",

        config = require("config.cheatsheet"),

        requires = {
            {"nvim-telescope/telescope.nvim"},
            {"nvim-lua/popup.nvim"},
            {"nvim-lua/plenary.nvim"},
        }
    },

    { "ellisonleao/glow.nvim" }
}


require("packer").startup(function()
    for _, plugin in pairs(plugins) do
        use(plugin)
    end
end)

vim.cmd [[colorscheme moonfly]]


-- vim.cmd [[colorscheme github_dark_default]]
-- vim.cmd [[colorscheme rvcs]]
