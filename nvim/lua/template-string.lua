local TemplateString = {}

TemplateString.update = function()
    vim.schedule(function()
        local line = vim.api.nvim_get_current_line()
        local cursor_pos = vim.api.nvim_win_get_cursor(0)
        local col = cursor_pos[2]

        if line:sub(col, col) == "{" and line:sub(col - 1, col - 1) == "$" then
            local start_quote_pos, end_quote_pos

            for i = col - 2, 1, -1 do
                if line:sub(i, i):match("[\"']") then
                    start_quote_pos = i
                    break
                end
            end

            for i = col + 1, #line do
                if line:sub(i, i):match("[\"']") then
                    end_quote_pos = i
                    break
                end
            end

            if start_quote_pos and end_quote_pos then
                local filetype = vim.bo.filetype

                if
                    (filetype == 'typescriptreact' or filetype == 'javascriptreact')
                    and line:sub(start_quote_pos - 1, start_quote_pos - 1) == '='
                    and not (line:sub(start_quote_pos - 1, start_quote_pos - 1) == '{' and line:sub(end_quote_pos + 1, end_quote_pos + 1) == '}')
                then
                    local new_line = line:sub(1, start_quote_pos - 1) .. '{`' .. line:sub(start_quote_pos + 1, end_quote_pos - 1) .. '`}' .. line:sub(end_quote_pos + 1)

                    vim.api.nvim_set_current_line(new_line)
                    vim.api.nvim_win_set_cursor(0, {cursor_pos[1], col + 1})
                else

                    local new_line = line:sub(1, start_quote_pos - 1) .. '`' .. line:sub(start_quote_pos + 1, end_quote_pos - 1) .. '`' .. line:sub(end_quote_pos + 1)
                    vim.api.nvim_set_current_line(new_line)
                    vim.api.nvim_win_set_cursor(0, {cursor_pos[1], col})
                end
            end
        end
    end)
end

return TemplateString
