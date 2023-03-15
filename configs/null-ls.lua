local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  b.formatting.eslint,
    b.formatting.rustfmt,
    b.formatting.shfmt,
    b.formatting.goimports,
    b.formatting.prettierd.with {
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
    b.diagnostics.eslint.with {
        command = "eslint_d",
    },
    b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
    b.diagnostics.semgrep.with({
        args = { "--config", "auto", "-q", "--json", "--timeout", "0" },
        timeout = 15000,
    }),
}

null_ls.setup {
  debug = true,
  sources = sources,
}
