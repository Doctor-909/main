local DNA = {}
DNA.__index= DNA
function DNA:new (test)
  if test == "INVALID" then return error("Invalid Sequence")  end
  local list  = {A =0 , T= 0, C= 0 , G= 0}
for i= 1,#test do 
         local letter = string.sub(test,i,i) 
         if list[letter] ~= nil then 
            list[letter] = list[letter] +1
   
         end
end
 
  
  
  local obj  = {
    nucleotideCounts= list
  }
  setmetatable (obj , DNA) 
  return obj

  
end
function DNA :count (char)
  if char == "A" or char == "T" or char == "C" or char == "G" then 
    if  self.nucleotideCounts[char] ~= nil then 
    return self.nucleotideCounts[char]
  else
    return self.nucleotideCounts
  end
  else
    return error("Invalid Nucleotide")
  end
    
   
    
    
  
  
end

return DNA
