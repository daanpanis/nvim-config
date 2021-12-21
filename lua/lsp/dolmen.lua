return function(lsp, on_attach, capabilities)
    local configs = require"lspconfig/configs"

    if not lsp.dolmenls then
        configs.dolmenls = {
            default_config = {
                cmd = {"dolmenls"};
                filetypes = {"smt2", "tptp", "dimacs", "icnf", "zf"};
                root_dir = function(fname)
                    return lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir() or fname == ".project"
                end;
                settings = {};
            }
        }
    end
    lsp.dolmenls.setup {
        capabilities = capabilities,
        on_attach = on_attach,
    }
    vim.cmd([[
        au BufEnter *.cnf setf dimacs
        au BufEnter *.icnf setf icnf
        au BufEnter *.p setf tptp
        au BufEnter *.smt2 setf smt2
        au BufEnter *.zf setf zf
    ]])
end
