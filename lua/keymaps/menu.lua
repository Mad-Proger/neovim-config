return {
    {
        mode = { "n", "v" },
        keys = "<leader>ca",
        command = vim.lsp.buf.code_action,
    },
    {
        keys = "<C-p>",
        command = require("telescope.builtin").find_files,
    },
    {
        keys = "<leader>fg",
        command = require("telescope.builtin").live_grep,
    },
}
