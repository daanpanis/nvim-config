return function()
    local feedkey = function(key, mode) 
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
    end

    local cmp = require("cmp")
    cmp.setup({
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end,
        },
        completion = {
            completeopt = 'menu,menuone,noinsert',
        },
        formatting = {
          format = function(entry, vim_item)
            -- fancy icons and a name of kind
            vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

            -- set a name for each source
            vim_item.menu = ({
              buffer = "[Buffer]",
              nvim_lsp = "[LSP]",
              luasnip = "[LuaSnip]",
              nvim_lua = "[Lua]",
              latex_symbols = "[Latex]",
            })[entry.source.name]
            return vim_item
          end,
        },
        mapping = {
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-c>"] = cmp.mapping.close(),
            -- ["<Tab>"] = cmp.mapping(function(fallback)
                -- --print("KAPPA!@#")
                -- cmp.mapping.confirm({select=true})
                -- if vim.fn.pumvisible() == 1 then
                    -- print("ABCABC")
                    -- --cmp.confirm({select=true})
                -- elseif vim.fn["vsnip#available"]() == 1 then
                    -- feedkey("<Plug>(vsnip-expand-or-jump)", "")
                -- else
                    -- fallback()
                -- end
            -- end, {"i", "s"}),
            ["<Tab>"] = cmp.mapping.confirm({select=true}),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if vim.fn["vsnip-expand-or-jump"](-1) == 1 then
                    feedkey("<Plug>(vsnip-jump-prev)", "")
                end
            end, {"i", "s"}),
            ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<C-k>"] = cmp.mapping.select_prev_item(),
            ['<C-p>'] = cmp.mapping.scroll_docs(-4),
            ['<C-n>'] = cmp.mapping.scroll_docs(4),
        },
        sources = {
            { name = "nvim_lsp"},
            { name = "buffer" },
            { name = 'vsnip' },
        }
    })
end
