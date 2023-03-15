local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
    ["neovim/nvim-lspconfig"] = {
        dependencies = {
            {
              "jose-elias-alvarez/null-ls.nvim",
              config = function()
                require "custom.configs.null-ls"
              end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = overrides.treesitter,
    },
    ["williamboman/mason.nvim"] = {
        override_options = overrides.mason,
    },
    ["nvim-tree/nvim-tree.lua"] = {
        override_options = overrides.nvimtree,
    },
    -- Install pluging

    -- ["max397574/better-escape.nvim"] = {
    --     event = "InsertEnter",
    --     config = function()
    --         require("better_escape").setup()
    --     end,
    -- },
}

return plugins
