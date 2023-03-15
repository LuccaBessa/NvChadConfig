-- https://github.com/neovim/nvim-lspconfig/blob/d3c82d2f9a6fd91ec1ffee645664d2cc57e706d9/doc/server_configurations.md

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

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
