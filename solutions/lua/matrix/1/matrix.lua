return function(s)

    local function row(n)
        local count = 0

        for line in string.gmatch(s, "([^\n]+)") do
            count = count + 1
            if count == n then
                local inside_List = {}
                for number in string.gmatch(line, "%S+") do
                    table.insert(inside_List, tonumber(number))
                end
                return inside_List
            end
        end

       
    end
  local function column (n) 
    local list = {} 
    local i = 1
    
    while true do 
      local h = row(i)
      if not h then  break end 
      
      table.insert(list, h[n])
      i = i +1
    end
    return list 
  end
    

    return { row = row  , column = column}

end
