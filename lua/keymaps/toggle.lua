return {
    {
        keys = "<C-n>",
        command = ":NvimTreeToggle<CR>",
        opts = { silent = true },
    },
    {
        keys = "<leader>h",
        command = function()
            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
        end,
    },
    {
        keys = "K",
        command = vim.lsp.buf.hover,
    },
}
