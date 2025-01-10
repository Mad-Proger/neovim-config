return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = {
                "lua",
                "asm",
                "c", "cpp", "cmake", "cuda",
                "rust", "toml",
                "python",
                "vim", "vimdoc", "markdown",
                "hyprlang", "yaml", "yuck"
            },
            highlight = { enable = true },
            indent = { enable = true },
        },
    },
}
