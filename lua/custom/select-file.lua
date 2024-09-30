local function list_directory(dirpath, file_filter)
    local entries = { { name = "..", type = "directory" } }
    for name, type in vim.fs.dir(dirpath) do
        if type == "directory" or file_filter(vim.fs.joinpath(dirpath, name), type) then
            table.insert(entries, {
                name = name,
                type = type,
            })
        end
    end
    return entries
end

local function sync_select(items, opts)
    local co = coroutine.running()
    assert(co, "must be running in coroutine")

    vim.ui.select(items, opts, function(choice)
        coroutine.resume(co, choice)
    end)

    local result = coroutine.yield()
    return result
end

local function select_dirent(dirpath, file_filter)
    local entries = list_directory(dirpath, file_filter)

    local item = sync_select(entries, {
        prompt = "Select file: " .. dirpath,
        format_item = function(item)
            if item.type == "directory" then
                return item.name .. "/"
            end
            return item.name
        end,
    })

    return item
end

local M = {}

function M.select_file(file_filter)
    local current_path = vim.fn.getcwd()
    while true do
        local entry = select_dirent(current_path, file_filter)
        current_path = vim.fs.normalize(vim.fs.joinpath(current_path, entry.name))
        if entry.type ~= "directory" then
            break
        end
    end
    return current_path
end

return M
