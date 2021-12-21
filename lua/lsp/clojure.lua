return function(lsp, on_attach, capabilities)
    lsp.clojure_lsp.setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end
