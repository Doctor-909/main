return function (which)
    local  alphabet = {
    "A", "B", "C", "D", "E", "F",
    "G", "H", "I", "J", "K", "L",
    "M", "N", "O", "P", "Q", "R",
    "S", "T", "U", "V", "W", "X",
    "Y", "Z"
}
local alphabetreserved = {
    A = 1,
    B = 2,
    C = 3,
    D = 4,
    E = 5,
    F = 6,
    G = 7,
    H = 8,
    I = 9,
    J = 10,
    K = 11,
    L = 12,
    M = 13,
    N = 14,
    O = 15,
    P = 16,
    Q = 17,
    R = 18,
    S = 19,
    T = 20,
    U = 21,
    V = 22,
    W = 23,
    X = 24,
    Y = 25,
    Z = 26
}


 local diamond ="" 
 local list_diamond= {} 
 local reversed_list= {}
 local inside_spacescounter= 1
for i = 1,alphabetreserved[which] do 
    --1 create the outside_spaces logic 
    local outside_spaces = "" 
    while #outside_spaces~= (alphabetreserved[which]-i ) do 
        outside_spaces= outside_spaces.."-" 
    end
    -- done 

    -- 2 create the inside_spaces logic 
    local inside_spaces = "" 
    if i >= 2 then 
    while #inside_spaces~= inside_spacescounter do 
         inside_spaces =inside_spaces.." "
    end
    inside_spacescounter = inside_spacescounter +2
end 

        
    -- done  
    -- now the final edite 
    if alphabet[i] == "A" then 
       table.insert(list_diamond,"["..outside_spaces..alphabet[i]..inside_spaces..outside_spaces.."]".."\n")
    else 
       table.insert(list_diamond,"["..outside_spaces..alphabet[i]..inside_spaces..alphabet[i] ..outside_spaces.."]".."\n")
    end
end 
-- don't worrie  i will add a reversed loop to finished the diamond look i just want to check if this correct  
for i = #list_diamond,1,-1 do 
    if #list_diamond ==i  then  
    else 
        table.insert(reversed_list,list_diamond[i])  
    end

end
for i =1,#reversed_list do 
    table.insert(list_diamond, reversed_list[i])

end
for i=1,#list_diamond do 
    diamond=diamond..list_diamond[i]
end

 
return diamond
end



