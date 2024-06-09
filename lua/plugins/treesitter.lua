return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = { "lua", "rust", "python", "cpp", "cmake" },
            sync_install = true,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        },
    },
}
