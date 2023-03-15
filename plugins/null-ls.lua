local ok, null_ls = pcall(require, "null-ls")

if not ok then
    return
end

local sources = {
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.prettierd.with {
        filetypes = {
            "html",
            "json",
            "markdown",
            "scss",
            "css",
            "css",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "less"
        },
    },
    null_ls.builtins.diagnostics.eslint.with {
        command = "eslint_d",
    },
    null_ls.builtins.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
    null_ls.builtins.diagnostics.semgrep.with({
        args = { "--config", "auto", "-q", "--json", "--timeout", "0" },
        timeout = 15000,
    }),
}

local M = {}
M.setup = function(on_attach)
    null_ls.config {
        sources = sources,
    }
    require("lspconfig")["null-ls"].setup { on_attach = on_attach }
end

return M
