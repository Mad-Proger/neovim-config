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
                },
            })

            vim.lsp.config("lua_ls", {
                format = {
                    enable = true,
                    defaultConfig = {
                        indent_style = "space",
                        indent_size = 2,
                    },
                },
            })

            vim.lsp.enable("clangd")
            vim.lsp.enable("cmake")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("nil_ls")

            -- requires 'vscode-langservers-extracted' to be installed globally in npm
            vim.lsp.enable("html")
            vim.lsp.enable("cssls")

            vim.diagnostic.config({ virtual_text = true })
        end,
    },
}
