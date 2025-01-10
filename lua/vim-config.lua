vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")
vim.cmd("set scrolloff=10")
vim.cmd("set mouse=")

vim.g.mapleader = " "

vim.api.nvim_create_autocmd("BufWrite", {
    callback = function()
        vim.lsp.buf.format()
    end,
})
