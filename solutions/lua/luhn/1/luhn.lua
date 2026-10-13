return {
  valid = function(s)
    --1) variables 

    local valid_input={}
    local counter = 0
    local double = false
    
    --2) clean and validate the input”

  for i =1,#s do 
      local input = string.sub(s,i,i) -- subing each character 
      if  tonumber(input) then   --valid number
          table.insert(valid_input,tonumber(input)) --insert valid number

      elseif input ~= " " then 
          return false  

      end
  end
-- 3)  1 valid_input is not allowed

  if #valid_input <=1  then 
      return false 
  end
  for i = #valid_input , 1,-1 do 
      local x = valid_input[i] 

      if double == true  then
          x = x*2 

          if x > 9 then 
              x= x -9 
          end
          double = false

      else 
          double = true 
      end 

  counter = counter + x 
end
-- 4) return true if counter is divided evenly by 10

return counter % 10 == 0
end
}
