local units = { 'K', 'M', 'B', 'T'}
for j=0,25 do
    for k=0,25 do
        local v = table.concat({tostring(string.char(65+j)), string.char(65+k)})
        table.insert(units, v)
    end
end

local result = 'return {'
for i,v in ipairs(units) do
    result = result .. string.format("'%s', ", v)
end

result = result .. '\n}'

print(result)

