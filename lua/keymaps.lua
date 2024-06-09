vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]], {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<esc>", ":noh<CR>", { silent = true })
vim.keymap.set("n", "<leader>h", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, {})
