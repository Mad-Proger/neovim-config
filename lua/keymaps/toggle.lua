return {
    {
        mode = "n",
        keys = "<C-n>",
        command = ":NvimTreeToggle<CR>",
        opts = { silent = true },
    },
    {
        mode = "n",
        keys = "<leader>h",
        command = function()
            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
        end,
        opts = {},
    },
    {
        mode = "n",
        keys = "K",
        command = vim.lsp.buf.hover,
        opts = {},
    },
}
