local codes_file = 'calibration_codes.txt'
local codes = {}

-- Get the lines and put in a table
for line in io.lines(codes_file) do
    codes[#codes + 1] = line
end

-- Logic, first and last numbers
local outputs = {}
local total = 0


for _, code in ipairs(codes) do
    local t_numbers = {}
    for num in code:gmatch('%d') do
        table.insert(t_numbers, num)
    end
    table.insert(outputs, t_numbers[1] .. t_numbers[#t_numbers])
end
print(outputs[#outputs])
for index, value in ipairs(outputs) do
    print(index, value)
    total = total + tonumber(value)
end
print('Total: ' .. total)
