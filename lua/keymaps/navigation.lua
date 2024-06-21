return {
    {
        -- double escape to exit terminal insert
        mode = "t",
        keys = "<esc><esc>",
        command = [[<C-\><C-n>]],
    },
    {
        -- escape to disable search result highlighting
        keys = "<esc>",
        command = ":noh<CR>",
        opts = { silent = true },
    },
    {
        keys = "gd",
        command = vim.lsp.buf.definition,
    },
    {
        keys = "gD",
        command = vim.lsp.buf.declaration,
    },
}
