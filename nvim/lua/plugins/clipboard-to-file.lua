local M = {}

-- Функция для записи содержимого в файл
function M.write_to_file(contents)
    local file_path = "/tmp/clipboard.txt"
    local file = io.open(file_path, "w")
    if file then
        file:write(contents)
        file:close()
    else
        vim.notify("Не удалось открыть файл для записи", vim.log.levels.ERROR)
    end
end

-- Функция для получения содержимого регистра и записи его в файл
function M.copy_to_file()
    local contents = vim.fn.getreg('"')
    M.write_to_file(contents)
end

-- Автоматически сохраняем в файл при копировании
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = M.copy_to_file,
})

return M

