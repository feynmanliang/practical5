#!/usr/bin/env lua

require 'nngraph'

-- module produce more than one output: `nn.CAddTable`
do
    local add = nn.CAddTable()
    local t1 = torch.Tensor{1,2,3}
    local t2 = torch.Tensor{3,4,10}
    print(add:forward({t1, t2}))
end

do
    local x1 = nn.Identity()()
    local x2 = nn.Identity()()
    local a = nn.CAddTable()({x1, x2})
    local m = nn.CAddTable()({x1, x2})
end

--vim:set et sw=4 ts=4:
