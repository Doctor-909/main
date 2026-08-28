return function(dna)
  local table = { A = "U" , C = "G" , T = "A"  ,  G = "C"  }

local results = ""
for i  = 1 , #dna do
    local letter   = string.sub(dna, i , i)
    for  key , value  in pairs(table) do

    if letter == key  then
          results = results..value
        break 
        
    elseif letter == value then
          results = results..key
        break 
        
    end
end
  

end
  return results


end
