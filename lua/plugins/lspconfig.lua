return {
    {
        "williamboman/mason.nvim",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        opts = {
            ensure_installed = {
                "lua_ls",
                "clangd",
                "cmake",
                "pyright",
                "ruff",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({
                cmd = {
                    "clangd",
                    "--clang-tidy",
                    "--enable-config",
                },
            })
            lspconfig.cmake.setup({})
            lspconfig.pyright.setup({})
        end,
    },
}
