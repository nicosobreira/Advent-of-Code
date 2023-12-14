function get_lines(file)
    local t_lines = {}
    for line in io.lines(file) do
        t_lines[#t_lines+1] = line
    end
    return t_lines
end