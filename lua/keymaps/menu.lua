return {
    {
        mode = { "n", "v" },
        keys = "<leader>ca",
        command = vim.lsp.buf.code_action,
        opts = {},
    },
    {
        mode = "n",
        keys = "<C-p>",
        command = require("telescope.builtin").find_files,
        opts = {},
    },
    {
        mode = "n",
        keys = "<leader>fg",
        command = require("telescope.builtin").live_grep,
        opts = {},
    },
}
