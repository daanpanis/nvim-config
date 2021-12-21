return function()
    local nvim_lsp = require("lspconfig") 

    local on_attach = function(client, bufnr) 
        local opts = { noremap=true, silent=true }
        local function map(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local function nmap(keymap, command) map("n", keymap, command, opts) end
        local function vmap(keymap, command) map("v", keymap, command, opts) end

        nmap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
        nmap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
        nmap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
        nmap("fa", "<cmd>lua vim.lsp.buf.formatting()<CR>")

        nmap("<Leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
        nmap("<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")

        nmap( "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
        nmap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
    end

    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

    local servers = {
        require("lsp.python"),
        require("lsp.haskell"),
        require("lsp.clojure"),
        require("lsp.sumneko_lua"),
        require("lsp.clangd"),
        require("lsp.dolmen"),
    }

    for _, server in ipairs(servers) do
        server(nvim_lsp, on_attach, capabilities)
    end
end
