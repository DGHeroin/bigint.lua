local units = require('bigint_units')

local bigint = require('bigint')
local a = bigint.new(7)
local b = bigint.new(3)
local c = a / b
print(a)
print(b)
print(c)

function test( i )
    local val = '1.11e+'..i
    print('====='..val..'======')
    print('tostring:', bigint.tostring(val, units), bigint.tostring(val))
    local str = bigint.tostring(val, units)
    local big = bigint.fromstring(str, units)
    if str == bigint.tostring(big, units) then
        print('fromstring:', bigint.tostring(big, units), bigint.tostring(big))
    end
end

for i=2,200 do
    test(i)
end
