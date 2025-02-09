return {
    {
        -- ctrl + F5
        keys = "<F29>",
        command = ":CMakeDebug<CR>",
        opts = { silent = true },
    },
    {
        keys = "<F17>",
        command = ":CMakeBuild<CR>",
        opts = { silent = true },
    },
    {
        keys = "<F6>",
        command = ":CMakeRun<CR>",
        opts = { silent = true },
    },
}
