return function (array, target)
  if #array == 0 then return -1 end
  local low = 1 
  local high = #array
  local mid 
  local element
   repeat
     mid= math.floor((low +high)/2)
      element = array[mid]
    
    if target > element then 
      low = mid +1 

    elseif target < element then 
      high = mid -1
    end
    until target == element  or low > high 
    if low > high then 
      return -1 
    end
    
    return mid

end