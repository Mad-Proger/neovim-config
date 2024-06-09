return {
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    },
    -- {
    --     "simrat39/rust-tools.nvim",
    --     dependencies = { "neovim/nvim-lspconfig" },
    --     ft = "rust",
    --     opts = true,
    -- },
    {
        "mrcjkb/rustaceanvim",
        version = "^4",
        lazy = false,
        ft = "rust",
    },
}
