return function(s)
  local words ="" 
  
  for i  = #s, 1 ,-1 do
    local letter = string.sub(s,i,i)
    words = words..letter
  end 
  return words 
end
