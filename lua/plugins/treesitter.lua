return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = { "lua", "rust", "python", "cpp", "cmake", "vimdoc" },
            highlight = { enable = true },
            indent = { enable = true },
        },
    },
}
