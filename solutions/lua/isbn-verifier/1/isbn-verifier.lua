return {
  valid = function(isbn)
    
    local str = string.gsub(isbn,"-","")
    if #str ~= 10 then return false end
   
      local sum = 0 
    local j = 0
      
    for i = 10, 1 , -1 do 
        j = j +1
        local x  =(string.sub(str,j , j))
         if x == "X" and j == 10   then x = 10 end
        x = tonumber(x)
         if x == nil then return  false end 
          sum =   x * i + sum 
    end
      if sum % 11 == 0 then 
        return true 
      else
        return false 
      end
      
  end}
