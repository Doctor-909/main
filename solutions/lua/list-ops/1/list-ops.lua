local function append(xs, ys)
     for _,v in ipairs(ys) do 
       table.insert(xs,v) 
     end 
     return xs

end

local function concat(...) 
  local resutls =   {} 
  local intries = {...}
  for _,v in ipairs(intries) do
     if type(v) =="table" then 
         for _, j in ipairs(v) do 
            table.insert(resutls , j)
         end
      end
  end 
  return resutls
     
    
end
    
  



local function length(xs)
  return #xs

end

local function reverse(xs)
  local results = {} 
   for i = #xs,1,-1 do  
     table.insert(results, xs[i])
   end
   return results
    

end

local function foldl(xs, value, f)
  local results = value 
  
  for _,x  in ipairs(xs) do 
     results  = f(results,x) 
    
  end
  return results



end
local function foldr(xs, value, f)
  local resutls = value 
  for i = #xs, 1, -1 do 
    -- The test expects the running accumulator FIRST, and the list element SECOND
    resutls = f(resutls, xs[i])
  end
  return resutls 
end

local function map(xs, f)
  local results = {} 
  for _,x  in ipairs(xs) do 
     local number = f(x) 
     table.insert(results, number) 
  end
  return results

end

local function filter(xs, pred)
  local resutls = {} 
  for _,x  in ipairs(xs) do 
    local busted = pred(x)
     if busted  then 
       table.insert(resutls, x) 
     end
  end
  return resutls

end

return {
  append = append,
  concat = concat,
  length = length,
  reverse = reverse,
  map = map,
  foldl = foldl,
  foldr = foldr,
  filter = filter
}
