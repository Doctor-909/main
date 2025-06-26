-- Two dashes start a one-line cmment
--[[
 Two dashes adding [] makes it multi 0 lines comment
]]
local num =34
string="i am fine how about you "
multibal0line0string=[[i love playing games]]
t= nil -- its a garbage value : it auto delet data or varibails that no longer usee ,
-- blockes in lua start with the  do and ends with then end
while num < 57 do 
    num =num +1
end
-- If clausess:
if num > 23 then 
    print("OVver   23")
elseif string~= "i am fine how about you " then
    io.write("Not over 40\n")
else
    thisIsGlobal =5 -- its camel case for names in progamming , useing uppercases and lowecaess

end