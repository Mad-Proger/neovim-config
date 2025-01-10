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
                "python", "typescript",
                "vim", "vimdoc", "markdown",
                "hyprlang", "yaml", "yuck", "nix",
            },
            highlight = { enable = true },
            indent = { enable = true },
        },
    },
}
