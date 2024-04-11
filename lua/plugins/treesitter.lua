return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = { "lua", "rust", "python", "cpp", "cmake" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        },
    },
}
