local function  clean(s)

local phonenumber=s:gsub("%D","")


local n_1 = string.sub(phonenumber,1,1)
  
local n_2 = string.sub(phonenumber,4,4)
  if n_1 == "1"  or n_1 == "0" then
    phonenumber = phonenumber:sub(2,#phonenumber)
    n_1 = phonenumber:sub(1,1)
    n_2 = phonenumber:sub(4,4)
  end

if    (n_1 ~= "1" and n_1 ~= "0") and (n_2 ~="1" and n_2 ~="0" )  and #phonenumber == 10 then
    return phonenumber
else
    return error("valid number Sir")
end


end
return {clean = clean}
