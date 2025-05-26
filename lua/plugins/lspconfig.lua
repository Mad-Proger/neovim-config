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
                "nil_ls",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("clangd", {
                cmd = {
                    "clangd",
                    "--clang-tidy",
                    "--enable-config",
                }
            })

            vim.lsp.enable("clangd")
            vim.lsp.enable("cmake")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("nil_ls")

            vim.diagnostic.config({ virtual_text = true })
        end,
    },
}
