return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            dap.adapters.lldb = {
                type = "executable",
                -- change to lldb-dap when upgrading to llvm 18.0+
                command = "/usr/bin/lldb-vscode",
                name = "lldb",
            }
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()

            local open_ui = function()
                dapui.open()
            end
            local close_ui = function()
                dapui.close()
            end

            dap.listeners.before["attach"]["dapui-config"] = open_ui
            dap.listeners.before["launch"]["dapui-config"] = open_ui
            dap.listeners.after["event_exited"]["dapui-config"] = close_ui
            dap.listeners.after["event_terminated"]["dapui-config"] = close_ui
        end,
    },
}
