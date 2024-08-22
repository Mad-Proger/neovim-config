return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            dap.adapters.lldb = {
                type = "executable",
                command = "/usr/bin/lldb-dap",
                name = "lldb",
            }
            dap.configurations.cpp = {
                {
                    name = "LLDB launch file",
                    type = "lldb",
                    request = "launch",
                    program = "${command:pickFile}",
                    cwd = "${fileDirname}",
                    runInTerminal = true,
                },
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
