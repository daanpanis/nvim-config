return function(lsp, on_attach, capabilities)
    lsp.hls.setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end
