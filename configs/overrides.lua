local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "go",
    "rust",
    "python",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "astro-language-server",
    "css-lsp",
    "emmet-ls",
    "eslint_d",
    "eslint-lsp",
    "html-lsp",
    "json-lsp",
    "tailwindcss-language-server",
    "typescript-language-server",

    -- rust
    "rust-analyzer",
    "rustfmt",

    -- go
    "gopls",
    "goimports",

    -- python
    "pyright",

    -- misc
    "marksman",
    "semgrep",
    "grammarly-languageserver",
    "prettierd"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
