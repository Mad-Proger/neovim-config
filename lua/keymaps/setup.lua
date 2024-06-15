local files = { "menu", "navigation", "toggle" }

for _, filename in ipairs(files) do
    for _, mapping in ipairs(require("keymaps." .. filename)) do
        vim.keymap.set(mapping.mode, mapping.keys, mapping.command, mapping.opts)
    end
end
