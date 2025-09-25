return function (numbers) 
   return { 
  to = function (limits)
      
      local sum  = {}
      local multiple
      local  results  = 0
      for _,v in ipairs(numbers) do 
         multiple = v 
         
        while multiple< limits do 
          if not sum[multiple]  then 
             sum[multiple] = true 
            results = results + multiple 
          end
             multiple = multiple + v
          
        end 
        
      end
        
          return results 

    end 
  }
end

