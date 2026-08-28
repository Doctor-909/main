return function(s)
  local letters = {
    "a","b","c","d","e","f","g","h","i","j","k","l","m",
    "n","o","p","q","r","s","t","u","v","w","x","y","z"
}
local count = 0
local repeated = {} 
  for _, letter in ipairs(letters) do 
      for i = 1,#s do 
          local x = string.sub(s,i,i) 
          x = string.lower(x)
          if letter == x  and not repeated[x] then 
             count = count +1
            repeated[x]= x
          end
      end
  end
if  count >= 26 then 
    return true
  else
    return false
  end
end
