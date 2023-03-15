local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  -- web dev
  "astro",
  "cssls",
  "emmet_ls",
  "eslint",
  "html",
  "jsonls",
  "tailwindcss",
  "tsserver",

  -- rust
  "rust_analyzer",

  -- go
  "gopls",

  -- python
  "pyright",

  -- misc
  "marksman",
  "grammarly",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
