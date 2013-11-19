local lanes = require 'lanes'.configure{ with_timers = false, protect_allocator = false}

local body = function( id)
    print( id)
end

local g = lanes.gen("*", body)

for i = 1, 10 do
    g( i)
end
