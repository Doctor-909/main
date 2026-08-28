return function (n)
  if n == 0 or 0>n then 
    return error("error, the number you entered is invalid number")
  end
    
    local x = 0
  
    while n > 1 do
        if n % 2 == 0 then  -- checking if N is  even number
            n = n /2 
            x = x +1 
        elseif n % 2 ~= 0 then  -- checking if N is odd
            n = (n*3) +1 
            x = x + 1 
        end
    end
    return x  
end

    

