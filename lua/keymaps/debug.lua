local dap = require("dap")

return {
    {
        keys = "<F9>",
        command = dap.toggle_breakpoint,
    },
    {
        keys = "<F8>",
        command = dap.step_over,
    },
    {
        keys = "<F7>",
        command = dap.step_into,
    },
    {
        -- Shift + F7
        keys = "<F19>",
        command = dap.step_out,
    },
    {
        keys = "<F5>",
        command = dap.continue,
    },
}
