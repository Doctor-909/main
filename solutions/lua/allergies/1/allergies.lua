local function list (score) 
  local items = { 
    [1] = "eggs", 
    [2] = "peanuts" ,
    [4] = "shellfish" ,
    [8] = "strawberries" ,
    [16]= "tomatoes" ,
    [32] = "chocolate" ,
    [64]= "pollen" ,
    [128]= "cats"
  } 
  local allergies= {} 
while score >0  do 
local log = (math.floor(math.log(score,2)))  -- returns  power of the base 2 
local number = math.tointeger(2^log) -- returns largest power of 2 that is less than score
table.insert(allergies,items[number]) -- insert in the table 
score = math.tointeger(score - (number)) -- subtracting the number from the score 

end
local newallergies = {} 
for i = #allergies ,1,-1 do 
  table.insert(newallergies,allergies[i])
  
end 

return newallergies
end

local function allergic_to(score,which)
  
  local status=false
  for _,v in ipairs(list(score)) do 
    if which == v then  
      status = true 
    end 


  end
  return status

end 
return {list = list , allergic_to= allergic_to}