
return function(n)
    if  n < 1 then 
        return error("nth-prime should be 1 or greater") 
    end
    local prime_numbers = {2}
    local count = 3
    while n > #prime_numbers do  
        local is_composite = false
        local  root_sqrt= math.sqrt(count)
        
        for _,value in ipairs(prime_numbers) do
            if root_sqrt >= value then 
                if   count % value == 0   then 
                    is_composite= true
                    break 
                    
                end 

            else 
                break 
            end
        end
        
        if  not is_composite then  
            table.insert(prime_numbers,count) 
        end 
        count = count +2
    end 
    return prime_numbers[#prime_numbers]
end

