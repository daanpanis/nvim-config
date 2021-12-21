return function(lsp, on_attach, capabilities)
    lsp.clangd.setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end
