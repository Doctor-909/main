return  function (sum)
    local list = {}
    for a = 1, sum -2 do
        for b = a, sum -1 -a  do
        local c  =  sum  - a - b
        if    a ^ 2     + b ^ 2  == c^ 2 then
            local  f = {a , b , c}
            table.insert(list, f)
        end

    end
end
return list
end
