vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]], {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})