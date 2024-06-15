return {
    {
        -- double escape to exit terminal insert
        mode = "t",
        keys = "<esc><esc>",
        command = [[<C-\><C-n>]],
        opts = {},
    },
    {
        -- escape to disable search result highlighting
        mode = "n",
        keys = "<esc>",
        command = ":noh<CR>",
        opts = { silent = true },
    },
    {
        mode = "n",
        keys = "gd",
        command = vim.lsp.buf.definition,
        opts = {},
    },
    {
        mode = "n",
        keys = "gD",
        command = vim.lsp.buf.declaration,
        opts = {},
    },
}
